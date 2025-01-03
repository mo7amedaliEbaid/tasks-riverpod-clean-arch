

import '../model/task_id.dart';
import '../repository/tasks_repository.dart';
import 'delete_task_usecase.dart';

class DeleteTaskUseCaseImpl implements DeleteTaskUseCase {
  final TasksRepository _repository;

  const DeleteTaskUseCaseImpl(this._repository);

  @override
  Future<void> execute(TaskId id) => _repository.deleteTask(id);
}
