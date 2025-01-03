

import '../model/task.dart';
import '../model/task_id.dart';
import '../model/tasks_list.dart';

abstract class TasksRepository {
  Future<TaskList> getTasksList();
  Future<Task> createTask(
    final String title,
    final String description,
    final bool isCompleted,
    final DateTime dueDate,
  );
  Future<void> updateTask(
    final TaskId id,
    final String title,
    final String description,
    final bool isCompleted,
    final DateTime dueDate,
  );
  Future<void> deleteTask(final TaskId id);
}
