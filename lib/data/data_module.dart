
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/repository/tasks_repository.dart';
import 'datasource/database/tasks_database.dart';
import 'datasource/database/tasks_database_impl.dart';
import 'repository/todos_repository_impl.dart';

final tasksDatabaseProvider = Provider<TasksDatabase>((_) => TasksDatabaseImpl());
final tasksRepositoryProvider =
    Provider<TasksRepository>((ref) => TasksRepositoryImpl(ref.watch(tasksDatabaseProvider)));
