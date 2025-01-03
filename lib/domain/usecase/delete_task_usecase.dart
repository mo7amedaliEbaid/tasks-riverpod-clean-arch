
import '../model/task_id.dart';

abstract class DeleteTaskUseCase {
  Future<void> execute(final TaskId id);
}
