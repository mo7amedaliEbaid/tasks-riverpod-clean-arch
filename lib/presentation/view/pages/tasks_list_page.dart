import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:tasks_riverpod/shared/constants.dart';
import 'package:tasks_riverpod/shared/responsive.dart';

import '../../../domain/model/task.dart';
import '../../../domain/model/tasks_list.dart';
import '../../../shared/theme_provider.dart';
import '../../viewmodel/taskslist/task_list_viewmodel.dart';
import '../widgets/chipsbar_widget.dart';
import 'task_form_page.dart';

class TasksListPage extends StatelessWidget {
  final _filteredTasksListProvider = filteredTasksListProvider;
  final _tasksListProvider = tasksListViewModelStateNotifierProvider;

  TasksListPage({super.key});

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
                  // ref.read(themeModeProvider.notifier).state =
                  //     theme == ThemeData.light()
                  //         ? ThemeData.dark()
                  //         : ThemeData.light();

                  ref.read(themeModeProvider.notifier).setTheme();
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

  Widget _buildTasksListWidget(final BuildContext context, final WidgetRef ref,
      final TaskList tasksList) {
    if (tasksList.length == 0) {
      return const Center(child: Text('No Task'));
    } else {
      return SingleChildScrollView(
        child: Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: Responsive.isMobile(context)
                ? const EdgeInsets.all(18.0)
                : const EdgeInsets.symmetric(vertical: 20, horizontal: 70),
            child: Wrap(
              direction: Axis.horizontal,
              spacing: 15,
              runSpacing: 15,
              children: tasksList.values
                  .map((task) => _buildTaskItemCardWidget(context, ref, task))
                  .toList(),
            ),
          ),
        ),
      );
    }
  }

  Widget _buildTaskItemCardWidget(
      final BuildContext context, final WidgetRef ref, final Task task) {
    final random = math.Random();
    return InkWell(
      child: Consumer(builder: (context, ref, child) {
        final theme = ref.watch(themeModeProvider);
        return Container(
          width: 400,
          height: 120,
          padding: const EdgeInsets.all(18.0),
          decoration: BoxDecoration(
              color: theme == ThemeData.light()
                  ? lightcardColors[random.nextInt(5)]
                  : darkcardColors[random.nextInt(5)],
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
