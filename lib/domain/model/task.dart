import 'package:freezed_annotation/freezed_annotation.dart';

import 'task_id.dart';

part 'task.freezed.dart';

@freezed
class Task with _$Task {
  const factory Task({
    required TaskId id,
    required String title,
    required String description,
    required bool isCompleted,
    required DateTime dueDate,
  }) = _Task;

  const Task._();

  Task complete() => copyWith(isCompleted: true);

  Task incomplete() => copyWith(isCompleted: false);
}
