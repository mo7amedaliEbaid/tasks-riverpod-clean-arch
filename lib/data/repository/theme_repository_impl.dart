import 'package:flutter/src/material/theme_data.dart';
import 'package:tasks_riverpod/data/datasource/theme/theme_pref.dart';
import 'package:tasks_riverpod/domain/repository/theme_repository.dart';

class ThemeRepositoryImpl implements ThemeRepository {
  final ThemePref themePref;

  ThemeRepositoryImpl({required this.themePref});

  @override
  Future<ThemeData> getTheme() async {
    return await themePref.getThemeMode()
        ? ThemeData.dark()
        : ThemeData.light();
  }

  @override
  Future<void> setTheme() async {
    return await themePref.setThemeMode();
  }
}
