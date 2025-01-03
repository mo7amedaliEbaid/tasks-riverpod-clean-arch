
import '../model/tasks_list.dart';

abstract class GetTaskListUseCase {
  Future<TaskList> execute();
}
