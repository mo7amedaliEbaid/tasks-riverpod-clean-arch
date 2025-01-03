
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/data_module.dart';
import 'usecase/create_task_usecase.dart';
import 'usecase/create_task_usecase_impl.dart';
import 'usecase/delete_task_usecase.dart';
import 'usecase/delete_task_usecase_impl.dart';
import 'usecase/get_task_list_usecase.dart';
import 'usecase/get_task_list_usecase_impl.dart';
import 'usecase/update_task_usecase.dart';
import 'usecase/update_task_usecase_impl.dart';

final getTasksListUseCaseProvider =
    Provider<GetTaskListUseCase>((ref) => GetTaskListUseCaseImpl(ref.watch(tasksRepositoryProvider)));
final createTaskUseCaseProvider =
    Provider<CreateTaskUseCase>((ref) => CreateTaskUseCaseImpl(ref.watch(tasksRepositoryProvider)));
final updateTaskUseCaseProvider =
    Provider<UpdateTaskUseCase>((ref) => UpdateTaskUseCaseImpl(ref.watch(tasksRepositoryProvider)));
final deleteTaskUseCaseProvider =
    Provider<DeleteTaskUseCase>((ref) => DeleteTaskUseCaseImpl(ref.watch(tasksRepositoryProvider)));
