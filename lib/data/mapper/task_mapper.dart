

import '../../domain/model/task.dart';
import '../../domain/model/task_id.dart';
import '../entity/tasks_entity.dart';

class TaskMapper {
  static Task transformToModel(final TaskEntity entity) {
    return Task(
      id: TaskId(value: entity['id']),
      title: entity['title'],
      description: entity['description'],
      isCompleted: entity['is_completed'] == 1,
      dueDate: DateTime.parse(entity['due_date']),
    );
  }

  static TaskEntity transformToMap(final Task model) {
    return {
      'id': model.id.value,
      'title': model.title,
      'description': model.description,
      'is_completed': model.isCompleted ? 1 : 0,
      'due_date': model.dueDate.toIso8601String(),
    };
  }

  static TaskEntity transformToNewEntityMap(
    final String title,
    final String description,
    final bool isCompleted,
    final DateTime dueDate,
  ) {
    return {
      'id': null,
      'title': title,
      'description': description,
      'is_completed': isCompleted ? 1 : 0,
      'due_date': dueDate.toIso8601String(),
    };
  }
}
