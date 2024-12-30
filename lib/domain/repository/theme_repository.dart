import 'package:flutter/material.dart';

abstract class ThemeRepository {
  Future<ThemeData> getTheme();
  Future<void> setTheme();
}
