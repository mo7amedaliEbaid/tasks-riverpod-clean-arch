import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_id.freezed.dart';

@freezed
class TaskId with _$TaskId {
  const factory TaskId({required int value}) = _TaskId;
}
