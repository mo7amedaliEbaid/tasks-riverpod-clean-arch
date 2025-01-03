
import 'package:flutter_test/flutter_test.dart';
import 'package:tasks_riverpod/domain/model/task.dart';
import 'package:tasks_riverpod/domain/model/task_id.dart';
import 'package:tasks_riverpod/domain/model/tasks_list.dart';

void main() {
  group('[] operator', () {
    group('when index value is valid', () {
      test('should return specified task', () {
        final actual = TaskList(values: [
          _buildTask(0),
          _buildTask(1),
          _buildTask(2),
          _buildTask(3),
        ])[2];
        final expected = _buildTask(2);
        expect(actual, expected);
      });
    });

    group('when index value is invalid', () {
      test('should throw exception', () {
        final tasksList = TaskList(values: [
          _buildTask(0),
          _buildTask(1),
          _buildTask(2),
          _buildTask(3),
        ]);
        expect(() => tasksList[4], throwsRangeError);
      });
    });
  });

  group('length getter', () {
    group('when task list is empty', () {
      test('should return 0', () {
        final actual = const TaskList(values: []).length;
        expect(actual, 0);
      });
    });

    group('when tasks list is not empty', () {
      test('should return 2', () {
        final actual = TaskList(values: [
          _buildTask(1),
          _buildTask(2),
        ]).length;
        expect(actual, 2);
      });
    });
  });
}

Task _buildTask(final int id) {
  return Task(
    id: TaskId(value: id),
    title: 'title$id',
    description: 'description$id',
    isCompleted: false,
    dueDate: DateTime.parse('2021-07-01'),
  );
}
