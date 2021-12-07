import 'package:flutter/material.dart';

abstract class IAppColors {
  Color get title;
  Color get subtitle;
  Color get primary;
  Color get buttonDisabled;
  Color get textDisabled;
  Color get textEnabled;
  Color get inputNormal;
  Color get background;
  Color get iconInactive;
  Color get textColor;
  Color get badColor;
  Color get border;
  Color get backButton;
}

class AppColors implements IAppColors {
  @override
  Color get background => const Color(0xFFF7F7F7);

  @override
  Color get badColor => const Color(0xFFE45851);

  @override
  Color get buttonDisabled => const Color(0xFFABABAB);

  @override
  Color get iconInactive => const Color(0xFF8C8C8C);

  @override
  Color get inputNormal => const Color(0xFF949B9C);

  @override
  Color get primary => const Color(0xFF27AE60);

  @override
  Color get textColor => const Color(0xFF272727);

  @override
  Color get textDisabled => const Color(0xFFD9D9D9);

  @override
  Color get textEnabled => const Color(0xFFFFFFFF);

  @override
  Color get border => const Color(0xFFE9E9EC);

  @override
  Color get subtitle => const Color(0xFF949B9C);
  @override
  Color get title => const Color(0xFF1E1F20);

  @override
  Color get backButton => const Color(0xFF000000);
}
