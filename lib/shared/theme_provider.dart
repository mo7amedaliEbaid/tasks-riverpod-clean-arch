import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tasks_riverpod/data/data_module.dart';
import 'package:tasks_riverpod/domain/repository/theme_repository.dart';

final themeModeProvider =
    StateNotifierProvider<ThemeModeNotifier, ThemeData>((ref) {
  final themePref = ref.watch(themeRepositoryProvider);
  return ThemeModeNotifier(themePref);
});

class ThemeModeNotifier extends StateNotifier<ThemeData> {
  final ThemeRepository _themeRepository;

  ThemeModeNotifier(this._themeRepository) : super(ThemeData.light()) {
    _loadTheme();
  }

  Future<void> _loadTheme() async {
    final theme = await _themeRepository.getTheme();
    state = theme;
  }

  Future<void> setTheme() async {
    await _themeRepository.setTheme();
    _loadTheme();
  }
}
