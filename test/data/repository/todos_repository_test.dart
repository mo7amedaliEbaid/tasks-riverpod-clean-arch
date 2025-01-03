
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tasks_riverpod/data/repository/todos_repository_impl.dart';
import 'package:tasks_riverpod/domain/model/task.dart';
import 'package:tasks_riverpod/domain/model/task_id.dart';
import 'package:tasks_riverpod/domain/model/tasks_list.dart';
import 'package:tasks_riverpod/domain/repository/tasks_repository.dart';

import '../../mock/data/datasource/database/tasks_database_mock.mocks.dart';


void main() {
  final database = MockTasksDatabase();
  final TasksRepository repository = TasksRepositoryImpl(database);
  final date = DateTime.now();

  group('#getTasksListTest', () {
    setUp(() {
      when(database.allTasks()).thenAnswer((_) async => [
            {
              'id': 1,
              'title': 'title',
              'description': 'description',
              'is_completed': 0,
              'due_date': date.toIso8601String(),
            },
          ]);
    });

    test('should return TasksList It is a successful test', () async {
      final actual = await repository.getTasksList();
      final expected = TaskList(
        values: [
          Task(
            id: const TaskId(value: 1),
            title: 'title',
            description: 'description',
            isCompleted: false,
            dueDate: date,
          ),
        ],
      );
      expect(actual.values.first.id, expected.values.first.id);
      verify(database.allTasks()).called(1);
    });
  });

  group('#createTask', () {
    setUp(() {
      when(database.insertTask(
        {
          'id': null,
          'title': 'title',
          'description': 'description',
          'is_completed': 0,
          'due_date': date.toIso8601String(),
        },
      )).thenAnswer(
        (_) async => {
          'id': 1,
          'title': 'title',
          'description': 'description',
          'is_completed': 0,
          'due_date': date.toIso8601String(),
        },
      );
    });

    test('should return void it is a successful test', () async {
      await repository.createTask('title', 'description', false, date);
      verify(database.insertTask(
        {
          'id': null,
          'title': 'title',
          'description': 'description',
          'is_completed': 0,
          'due_date': date.toIso8601String(),
        },
      )).called(1);
    });
  });

  group('#updateTasktest', () {
    setUp(() {
      when(database.updateTask(
        {
          'id': 1,
          'title': 'new title',
          'description': 'new description',
          'is_completed': 1,
          'due_date': date.toIso8601String(),
        },
      )).thenAnswer((_) async => {});
    });

    test('should return void It is a successful test', () async {
      await repository.updateTask(const TaskId(value: 1), 'new title', 'new description', true, date);
      verify(database.updateTask(
        {
          'id': 1,
          'title': 'new title',
          'description': 'new description',
          'is_completed': 1,
          'due_date': date.toIso8601String(),
        },
      )).called(1);
    });
  });

  group('#deleteTasktest', () {
    setUp(() {
      when(database.deleteTask(1)).thenAnswer((_) async => {});
    });

    test('should return void It is a successful test', () async {
      await repository.deleteTask(const TaskId(value: 1));
      verify(database.deleteTask(1)).called(1);
    });
  });
}
