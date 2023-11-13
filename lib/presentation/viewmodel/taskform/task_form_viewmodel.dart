
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/model/task.dart';
import '../../../domain/model/task_id.dart';
import '../taskslist/task_list_viewmodel.dart';

final taskFormViewModelProvider =
    Provider.autoDispose.family<TaskFormViewModel, Task?>((ref, task) {
  final tasksListViewModel =
      ref.watch(tasksListViewModelStateNotifierProvider.notifier);
  return TaskFormViewModel(task, tasksListViewModel);
});

class TaskFormViewModel {
  late TaskId _id;
  final TaskListViewModel _taskListViewModel;
  var _title = '';
  var _description = '';
  var _isCompleted = false;
  var _dueDate = DateTime.now();
  var _isNewTask = false;

  TaskFormViewModel(final Task? task, this._taskListViewModel) {
    _initTask(task);
  }

  _initTask(final Task? task) {
    if (task == null) {
      _isNewTask = true;
    } else {
      _id = task.id;
      _title = task.title;
      _description = task.description;
      _isCompleted = task.isCompleted;
      _dueDate = task.dueDate;
    }
  }

  createOrUpdateTask() {
    if (_isNewTask) {
      _taskListViewModel.addTask(_title, _description, _isCompleted, _dueDate);
    } else {
      final newTask = Task(
        id: _id,
        title: _title,
        description: _description,
        isCompleted: _isCompleted,
        dueDate: _dueDate,
      );
      _taskListViewModel.updateTask(newTask);
    }
  }

  deleteTask() {
    if (!_isNewTask) _taskListViewModel.deleteTask(_id);
  }

  String appBarTitle() => _isNewTask ? 'Add Task' : 'Edit Task';

  String initialTitleValue() => _title;

  String initialDescriptionValue() => _description;

  DateTime initialDueDateValue() => _dueDate;

  DateTime datePickerFirstDate() => DateTime(DateTime.now().year - 5, 1, 1);

  DateTime datePickerLastDate() => DateTime(DateTime.now().year + 5, 12, 31);

  bool shouldShowDeleteTaskIcon() => !_isNewTask;

  setTitle(final String value) => _title = value;

  setDescription(final String value) => _description = value;

  setTodoStatus(final bool status) => _isCompleted = status;

  setDueDate(final DateTime value) => _dueDate = value;

  String? validateTitle() {
    if (_title.isEmpty) {
      return 'Enter a title.';
    } else if (_title.length > 20) {
      return 'Limit the title to 20 characters.';
    } else {
      return null;
    }
  }

  String? validateDescription() {
    if (_description.length > 100) {
      return 'Limit the description to 100 characters.';
    } else {
      return null;
    }
  }

  String? validateDueDate() {
    if (_isNewTask && _dueDate.isBefore(DateTime.now())) {
      return "DueDate must be after today's date.";
    } else {
      return null;
    }
  }
}
