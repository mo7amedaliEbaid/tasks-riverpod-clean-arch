
import '../model/task.dart';

abstract class CreateTaskUseCase {
  Future<Task> execute(
    final String title,
    final String description,
    final bool isCompleted,
    final DateTime dueDate,
  );
}
