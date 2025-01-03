
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tasks_riverpod/domain/model/task.dart';
import 'package:tasks_riverpod/domain/model/task_id.dart';
import 'package:tasks_riverpod/domain/model/tasks_list.dart';
import 'package:tasks_riverpod/domain/repository/tasks_repository.dart';
import 'package:tasks_riverpod/domain/usecase/get_task_list_usecase.dart';
import 'package:tasks_riverpod/domain/usecase/get_task_list_usecase_impl.dart';

import '../../mock/domain/repository/todos_repository_mock.mocks.dart';

void main() {
  final TasksRepository repository = MockTasksRepository();
  final date = DateTime.now();
  final GetTaskListUseCase usecase = GetTaskListUseCaseImpl(repository);

  setUp(() {
    when(repository.getTasksList()).thenAnswer(
      (_) async => TaskList(
        values: [
          Task(
            id: const TaskId(value: 1),
            title: 'title',
            description: 'description',
            isCompleted: false,
            dueDate: date,
          ),
        ],
      ),
    );
  });

  test('should return TasksList, successful test', () async {
    final expected = TaskList(
      values: [
        Task(id: const TaskId(value: 1), title: 'title', description: 'description', isCompleted: false, dueDate: date),
      ],
    );
    final actual = await usecase.execute();
    expect(expected, actual);
    verify(repository.getTasksList()).called(1);
  });
}
