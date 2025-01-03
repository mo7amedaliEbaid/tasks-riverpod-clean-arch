

import '../model/tasks_list.dart';
import '../repository/tasks_repository.dart';
import 'get_task_list_usecase.dart';

class GetTaskListUseCaseImpl implements GetTaskListUseCase {
  final TasksRepository _repository;

  const GetTaskListUseCaseImpl(this._repository);

  @override
  Future<TaskList> execute() => _repository.getTasksList();
}
