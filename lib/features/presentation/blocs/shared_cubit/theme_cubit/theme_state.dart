import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ThemeState extends Equatable {
  final ThemeData themeData;
  final bool isDark;

  const ThemeState(this.themeData, this.isDark);

  @override
  List<Object?> get props => [themeData, isDark];
}
