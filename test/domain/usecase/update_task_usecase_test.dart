
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tasks_riverpod/domain/model/task_id.dart';
import 'package:tasks_riverpod/domain/repository/tasks_repository.dart';
import 'package:tasks_riverpod/domain/usecase/update_task_usecase.dart';
import 'package:tasks_riverpod/domain/usecase/update_task_usecase_impl.dart';

import '../../mock/domain/repository/todos_repository_mock.mocks.dart';

void main() {
  final TasksRepository repository = MockTasksRepository();
  final UpdateTaskUseCase usecase = UpdateTaskUseCaseImpl(repository);
  final date = DateTime.now();

  setUp(() {
    when(repository.updateTask(
      const TaskId(value: 1),
      'title',
      'description',
      true,
      date,
    )).thenAnswer((_) async => {});
  });

  test('should return void', () async {
    await usecase.execute(
      const TaskId(value: 1),
      'title',
      'description',
      true,
      date,
    );
    verify(repository.updateTask(
      const TaskId(value: 1),
      'title',
      'description',
      true,
      date,
    )).called(1);
  });
}
