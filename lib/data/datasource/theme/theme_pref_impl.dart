import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tasks_riverpod/data/datasource/theme/theme_pref.dart';
import 'package:tasks_riverpod/domain/model/theme/theme_mode_model.dart';

class ThemePrefImpl implements ThemePref {
  Isar? _isar;

  Future<Isar> get isar async {
    _isar ??= await _init();
    return _isar!;
  }

  Future<Isar> _init() async {
    final dir = await getApplicationDocumentsDirectory();
    return Isar.open(
      schemas: [ThemeModeModelSchema],
      directory: dir.path,
    );
  }

  @override
  Future<bool> getThemeMode() async {
    final themeMode = await isar.then((value) => value.themeModeModels.get(1));
    if (themeMode == null) {
      _isar!.write((val) {
        _isar!.themeModeModels.put(
          ThemeModeModel()..isDarkMode = false,
        );
      });
    }
    return themeMode?.isDarkMode ?? false;
  }

  @override
  Future<void> setThemeMode() async {
    bool isDark = await getThemeMode();

    isDark = !isDark;

    // Save the new theme mode to Isar
    _isar!.write((isar) {
      _isar!.themeModeModels.put(
        ThemeModeModel()..isDarkMode = isDark,
      );
    });
  }
}
