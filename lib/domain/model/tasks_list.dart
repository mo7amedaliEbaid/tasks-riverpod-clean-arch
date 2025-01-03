
import 'package:freezed_annotation/freezed_annotation.dart';

import 'task.dart';
import 'task_id.dart';

part 'tasks_list.freezed.dart';

@freezed
class TaskList with _$TaskList {
  const factory TaskList({required List<Task> values}) = _TaskList;

  const TaskList._();

  operator [](final int index) => values[index];

  int get length => values.length;

  TaskList addTask(final Task task) => copyWith(values: [...values, task]);

  TaskList updateTask(final Task newTask) {
    return copyWith(values: values.map((task) => newTask.id == task.id ? newTask : task).toList());
  }

  TaskList removeTaskById(final TaskId id) => copyWith(values: values.where((task) => task.id != id).toList());

  TaskList filterByCompleted() => copyWith(values: values.where((task) => task.isCompleted).toList());

  TaskList filterByIncomplete() => copyWith(values: values.where((task) => !task.isCompleted).toList());
}
