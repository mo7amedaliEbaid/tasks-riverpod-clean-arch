

import '../model/task.dart';
import '../repository/tasks_repository.dart';
import 'create_task_usecase.dart';

class CreateTaskUseCaseImpl implements CreateTaskUseCase {
  final TasksRepository _repository;

  const CreateTaskUseCaseImpl(this._repository);

  @override
  Future<Task> execute(
    String title,
    String description,
    bool isCompleted,
    DateTime dueDate,
  ) {
    return _repository.createTask(title, description, isCompleted, dueDate);
  }
}
