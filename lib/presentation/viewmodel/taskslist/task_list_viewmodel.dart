
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/domain_module.dart';
import '../../../domain/model/task.dart';
import '../../../domain/model/task_id.dart';
import '../../../domain/model/tasks_list.dart';
import '../../../domain/usecase/create_task_usecase.dart';
import '../../../domain/usecase/delete_task_usecase.dart';
import '../../../domain/usecase/get_task_list_usecase.dart';
import '../../../domain/usecase/update_task_usecase.dart';
import '../../state/state.dart';
import 'filter_kind_viewmodel.dart';

final filteredTasksListProvider = Provider.autoDispose<State<TaskList>>((ref) {
  final filterKind = ref.watch(filterKindViewModelStateNotifierProvider);
  final tasksListState = ref.watch(tasksListViewModelStateNotifierProvider);

  return tasksListState.when(
    init: () => const State.init(),
    success: (tasksList) {
      switch (filterKind) {
        case FilterKind.all:
          return State.success(tasksList);
        case FilterKind.completed:
          return State.success(tasksList.filterByCompleted());
        case FilterKind.incomplete:
          return State.success(tasksList.filterByIncomplete());
      }
    },
    loading: () => const State.loading(),
    error: (exception) => State.error(exception),
  );
});

final tasksListViewModelStateNotifierProvider =
    StateNotifierProvider.autoDispose<TaskListViewModel, State<TaskList>>((ref) {
  return TaskListViewModel(
    ref.watch(getTasksListUseCaseProvider),
    ref.watch(createTaskUseCaseProvider),
    ref.watch(updateTaskUseCaseProvider),
    ref.watch(deleteTaskUseCaseProvider),
  );
});

class TaskListViewModel extends StateNotifier<State<TaskList>> {
  final GetTaskListUseCase _getTasksListUseCase;
  final CreateTaskUseCase _createTaskUseCase;
  final UpdateTaskUseCase _updateTaskUseCase;
  final DeleteTaskUseCase _deleteTaskUseCase;

  TaskListViewModel(
    this._getTasksListUseCase,
    this._createTaskUseCase,
    this._updateTaskUseCase,
    this._deleteTaskUseCase,
  ) : super(const State.init()) {
    _getTasksList();
  }

  completeTask(final Task task) {
    final newTask = task.copyWith(isCompleted: true);
    updateTask(newTask);
  }

  undoTask(final Task task) {
    final newTask = task.copyWith(isCompleted: false);
    updateTask(newTask);
  }

  _getTasksList() async {
    try {
      state = const State.loading();
      final taskslist = await _getTasksListUseCase.execute();
      state = State.success(taskslist);
    } on Exception catch (e) {
      state = State.error(e);
    }
  }

  addTask(
    final String title,
    final String description,
    final bool isCompleted,
    final DateTime dueDate,
  ) async {
    try {
      final newTask = await _createTaskUseCase.execute(
        title,
        description,
        isCompleted,
        dueDate,
      );
      state = State.success(state.data!.addTask(newTask));
    } on Exception catch (e) {
      state = State.error(e);
    }
  }

  updateTask(final Task newTask) async {
    try {
      await _updateTaskUseCase.execute(
        newTask.id,
        newTask.title,
        newTask.description,
        newTask.isCompleted,
        newTask.dueDate,
      );
      state = State.success(state.data!.updateTask(newTask));
    } on Exception catch (e) {
      state = State.error(e);
    }
  }

  deleteTask(final TaskId id) async {
    try {
      await _deleteTaskUseCase.execute(id);
      state = State.success(state.data!.removeTaskById(id));
    } on Exception catch (e) {
      state = State.error(e);
    }
  }
}
