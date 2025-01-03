
import '../../entity/tasks_entity.dart';

abstract class TasksDatabase {
  Future<TaskListEntity> allTasks();
  Future<TaskEntity> insertTask(final TaskEntity taskEntity);
  Future<void> updateTask(final TaskEntity taskEntity);
  Future<void> deleteTask(final int id);
}
