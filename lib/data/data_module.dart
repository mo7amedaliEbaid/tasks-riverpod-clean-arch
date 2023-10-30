
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/repository/todos_repository.dart';
import 'datasource/database/todos_database.dart';
import 'datasource/database/todos_database_impl.dart';
import 'repository/todos_repository_impl.dart';

final todosDatabaseProvider = Provider<TodosDatabase>((_) => TodosDatabaseImpl());
final todosRepositoryProvider =
    Provider<TodosRepository>((ref) => TodosRepositoryImpl(ref.watch(todosDatabaseProvider)));
