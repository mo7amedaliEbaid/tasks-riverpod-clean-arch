
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../../entity/tasks_entity.dart';
import 'tasks_database.dart';

class TasksDatabaseImpl implements TasksDatabase {
  static const _databaseName = 'tasks_database';
  static const _tableName = 'tasks_table';
  static const _databaseVersion = 1;
  static const _columnId = 'id';
  static const _columnTitle = 'title';
  static const _columnDescription = 'description';
  static const _columnIsCompleted = 'is_completed';
  static const _columnDueDate = 'due_date';
  static Database? _database;

  Future<Database> get database async {
    _database ??= await _initDatabase();
    return _database!;
  }

  @override
  Future<TaskListEntity> allTasks() async {
    final db = await database;
    return db.query(_tableName);
  }

  @override
  Future<TaskEntity> insertTask(final TaskEntity task) async {
    final db = await database;
    late final TaskEntity taskentity;
    await db.transaction((txn) async {
      final id = await txn.insert(
        _tableName,
        task,
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
      final results = await txn.query(_tableName, where: '$_columnId = ?', whereArgs: [id]);
      taskentity = results.first;
    });
    return taskentity;
  }

  @override
  Future<void> updateTask(final TaskEntity task) async {
    final db = await database;
    final int id = task['id'];
    await db.update(
      _tableName,
      task,
      where: '$_columnId = ?',
      whereArgs: [id],
    );
  }

  @override
  Future<void> deleteTask(final int id) async {
    final db = await database;
    await db.delete(
      _tableName,
      where: '$_columnId = ?',
      whereArgs: [id],
    );
  }

  Future<Database> _initDatabase() async {
    return openDatabase(
      join(await getDatabasesPath(), _databaseName),
      onCreate: (db, _) {
        db.execute('''
          CREATE TABLE $_tableName(
            $_columnId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
            $_columnTitle TEXT NOT NULL,
            $_columnDescription TEXT,
            $_columnIsCompleted INTEGER NOT NULL,
            $_columnDueDate TEXT NOT NULL
          )
        ''');
      },
      version: _databaseVersion,
    );
  }
}
