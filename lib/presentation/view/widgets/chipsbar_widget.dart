import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../viewmodel/taskslist/filter_kind_viewmodel.dart';

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
            padding: const EdgeInsets.all(18),
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