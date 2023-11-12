

import '../model/task_id.dart';
import '../repository/tasks_repository.dart';
import 'update_task_usecase.dart';

class UpdateTaskUseCaseImpl implements UpdateTaskUseCase {
  final TasksRepository _repository;

  const UpdateTaskUseCaseImpl(this._repository);

  @override
  Future<void> execute(
    final TaskId id,
    final String title,
    final String description,
    final bool isCompleted,
    final DateTime dueDate,
  ) {
    return _repository.updateTask(id, title, description, isCompleted, dueDate);
  }
}
