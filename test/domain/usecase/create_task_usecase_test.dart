
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tasks_riverpod/domain/model/task.dart';
import 'package:tasks_riverpod/domain/model/task_id.dart';
import 'package:tasks_riverpod/domain/repository/tasks_repository.dart';
import 'package:tasks_riverpod/domain/usecase/create_task_usecase.dart';
import 'package:tasks_riverpod/domain/usecase/create_task_usecase_impl.dart';

import '../../mock/domain/repository/todos_repository_mock.mocks.dart';

void main() {
  final TasksRepository repository = MockTasksRepository();
  final CreateTaskUseCase usecase = CreateTaskUseCaseImpl(repository);
  final date = DateTime.now();
  final task = Task(
    id: const TaskId(value: 1),
    title: 'title',
    description: 'description',
    isCompleted: false,
    dueDate: date,
  );

  setUp(() {
    when(repository.createTask('title', 'description', false, date)).thenAnswer((_) async => task);
  });

  test('should return task , successful test', () async {
    final expected = await usecase.execute('title', 'description', false, date);
    final actual = task;
    expect(expected, actual);
    verify(repository.createTask('title', 'description', false, date));
  });
}
