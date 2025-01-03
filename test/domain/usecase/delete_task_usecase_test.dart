
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tasks_riverpod/domain/model/task_id.dart';
import 'package:tasks_riverpod/domain/repository/tasks_repository.dart';
import 'package:tasks_riverpod/domain/usecase/delete_task_usecase.dart';
import 'package:tasks_riverpod/domain/usecase/delete_task_usecase_impl.dart';

import '../../mock/domain/repository/todos_repository_mock.mocks.dart';


void main() {
  final TasksRepository repository = MockTasksRepository();
  final DeleteTaskUseCase usecase = DeleteTaskUseCaseImpl(repository);

  setUp(() {
    when(repository.deleteTask(const TaskId(value: 1))).thenAnswer((_) async => {});
  });

  test('should return void', () async {
    await usecase.execute(const TaskId(value: 1));
    verify(repository.deleteTask(const TaskId(value: 1))).called(1);
  });
}
