

import '../../domain/model/task.dart';
import '../../domain/model/task_id.dart';
import '../../domain/model/tasks_list.dart';
import '../../domain/repository/tasks_repository.dart';
import '../datasource/database/tasks_database.dart';
import '../mapper/task_list_mapper.dart';
import '../mapper/task_mapper.dart';

class TasksRepositoryImpl implements TasksRepository {
  final TasksDatabase database;

  const TasksRepositoryImpl(this.database);

  @override
  Future<TaskList> getTasksList() async {
    final tasksListEntity = await database.allTasks();
    return TasksListMapper.transformToModel(tasksListEntity);
  }

  @override
  Future<Task> createTask(
    final String title,
    final String description,
    final bool isCompleted,
    final DateTime dueDate,
  ) async {
    final taskEntity = await database.insertTask(TaskMapper.transformToNewEntityMap(
      title,
      description,
      isCompleted,
      dueDate,
    ));
    return TaskMapper.transformToModel(taskEntity);
  }

  @override
  Future<void> updateTask(
    final TaskId id,
    final String title,
    final String description,
    final bool isCompleted,
    final DateTime dueDate,
  ) async {
    final task = Task(
      id: id,
      title: title,
      description: description,
      isCompleted: isCompleted,
      dueDate: dueDate,
    );
    await database.updateTask(TaskMapper.transformToMap(task));
  }

  @override
  Future<void> deleteTask(final TaskId id) async => await database.deleteTask(id.value);
}
