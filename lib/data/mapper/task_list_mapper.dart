

import '../../domain/model/tasks_list.dart';
import '../entity/tasks_entity.dart';
import 'task_mapper.dart';

class TasksListMapper {
  static TaskList transformToModel(final TaskListEntity entities) {
    final values =
        entities.map((entity) => TaskMapper.transformToModel(entity)).toList();
    return TaskList(values: values);
  }

  static TaskListEntity transformToMap(final TaskList model) =>
      model.values.map((value) => TaskMapper.transformToMap(value)).toList();
}
