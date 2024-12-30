import 'package:isar/isar.dart';

part 'theme_mode_model.g.dart';

@Collection()
class ThemeModeModel {
  int id = 1; // Always 1 because there's only one theme mode stored.
  bool? isDarkMode;
}
