
import '../model/task_id.dart';

abstract class UpdateTaskUseCase {
  Future<void> execute(
    final TaskId id,
    final String title,
    final String description,
    final bool isCompleted,
    final DateTime dueDate,
  );
}
