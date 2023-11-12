import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:tasks_riverpod/shared/constants.dart';
import 'dart:math' as math;
import '../../domain/model/task.dart';
import '../../domain/model/tasks_list.dart';
import '../../main.dart';
import '../../shared/theme_provider.dart';
import '../viewmodel/taskslist/filter_kind_viewmodel.dart';
import '../viewmodel/taskslist/todo_list_viewmodel.dart';
import 'task_form_page.dart';

class TasksListPage extends StatelessWidget {
  final _filteredTasksListProvider = filteredTasksListProvider;
  final _tasksListProvider = tasksListViewModelStateNotifierProvider;

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tasks List'),
        actions: [
          Consumer(builder: (context, ref, child) {
            final theme = ref.watch(themeModeProvider);
            return IconButton(
                onPressed: () {
                  ref.read(themeModeProvider.notifier).state =
                      theme == ThemeData.light()
                          ? ThemeData.dark()
                          : ThemeData.light();
                },
                icon: Icon(theme == ThemeData.dark()
                    ? Icons.light_mode
                    : Icons.dark_mode));
          })
        ],
      ),
      body: Column(
        children: [
          ChipsBarWidget(),
          const Divider(height: 2, color: Colors.grey),
          Consumer(
            builder: (context, ref, _) {
              return ref.watch(_filteredTasksListProvider).maybeWhen(
                    success: (content) =>
                        _buildTasksListContainerWidget(context, ref, content),
                    error: (_) => _buildErrorWidget(),
                    orElse: () => const Expanded(
                        child: Center(child: CircularProgressIndicator())),
                  );
            },
          ),
        ],
      ),
      floatingActionButton: _buildFloatingActionButton(context),
    );
  }

  Widget _buildTasksListContainerWidget(
      BuildContext context, WidgetRef ref, final TaskList tasksList) {
    return Expanded(child: _buildTasksListWidget(context, ref, tasksList));
  }

  Widget _buildTasksListWidget(
      BuildContext context, final WidgetRef ref, final TaskList tasksList) {
    if (tasksList.length == 0) {
      return const Center(child: Text('No Task'));
    } else {
      return Align(
        alignment: Alignment.topLeft,
        child: Wrap(
          direction: Axis.horizontal,
          children: tasksList.values
              .map((task) => _buildTaskItemCardWidget(context, ref, task))
              .toList(),
        ),
      );

      /*   ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: tasksList.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (final BuildContext context, final int index) {
          return _buildTaskItemCardWidget(context, ref, tasksList[index]);
        },
      );*/
    }
  }

  Widget _buildTaskItemCardWidget(
      final BuildContext context, final WidgetRef ref, final Task task) {
    final _random = math.Random();
    return InkWell(
      child: Consumer(builder: (context, ref, child) {
        final theme = ref.watch(themeModeProvider);
        return Card(
          color: Colors.transparent,
          child: Container(
            width: Platform.isLinux == true ||
                    Platform.isWindows == true ||
                    Platform.isMacOS == true
                ? 400
                : double.infinity,
            height: 100,
            padding: const EdgeInsets.all(18.0),
            decoration: BoxDecoration(
                color: theme == ThemeData.light()
                    ? lightcardColors[_random.nextInt(5)]
                    : darkcardColors[_random.nextInt(5)],
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        task.title,
                        style: Theme.of(context).textTheme.titleLarge,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        DateFormat('yyyy/MM/dd').format(task.dueDate),
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        task.description.isEmpty
                            ? 'No Description'
                            : task.description,
                        style: Theme.of(context).textTheme.bodyMedium,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                task.isCompleted
                    ? _buildCheckedIcon(ref, task)
                    : _buildUncheckedIcon(ref, task),
              ],
            ),
          ),
        );
      }),
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => TaskFormPage(task),
          )),
    );
  }

  Widget _buildCheckedIcon(final WidgetRef ref, final Task task) {
    return InkResponse(
      onTap: () => ref.watch(_tasksListProvider.notifier).undoTask(task),
      splashColor: Colors.transparent,
      child: const Icon(Icons.done, size: 24, color: Colors.green),
    );
  }

  Widget _buildUncheckedIcon(final WidgetRef ref, final Task task) {
    return InkResponse(
      onTap: () => ref.watch(_tasksListProvider.notifier).completeTask(task),
      splashColor: Colors.transparent,
      child: const Icon(
        Icons.radio_button_off_rounded,
        size: 24,
        color: Colors.grey,
      ),
    );
  }

  Widget _buildFloatingActionButton(final BuildContext context) {
    return FloatingActionButton(
      onPressed: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => const TaskFormPage(null),
        ),
      ),
      child: const Icon(Icons.add),
    );
  }

  Widget _buildErrorWidget() {
    return const Center(child: Text('An error has occurred!'));
  }
}

class ChipsBarWidget extends StatelessWidget {
  final _provider = filterKindViewModelStateNotifierProvider;

  @override
  Widget build(final BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        final viewModel = ref.watch(_provider.notifier);
        ref.watch(_provider);
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Row(
              children: [
                InputChip(
                  label: const Text('All'),
                  selected: viewModel.isFilteredByAll(),
                  onSelected: (_) => viewModel.filterByAll(),
                  selectedColor:
                      viewModel.isFilteredByAll() ? Colors.blue : null,
                ),
                const SizedBox(width: 8),
                InputChip(
                  label: const Text('Completed'),
                  selected: viewModel.isFilteredByCompleted(),
                  onSelected: (_) => viewModel.filterByCompleted(),
                  selectedColor:
                      viewModel.isFilteredByCompleted() ? Colors.blue : null,
                ),
                const SizedBox(width: 8),
                InputChip(
                  label: const Text('Incomplete'),
                  selected: viewModel.isFilteredByIncomplete(),
                  onSelected: (_) => viewModel.filterByIncomplete(),
                  selectedColor:
                      viewModel.isFilteredByIncomplete() ? Colors.blue : null,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
