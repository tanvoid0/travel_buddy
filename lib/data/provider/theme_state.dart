import 'package:google_fonts/google_fonts.dart';
import 'package:travel_buddy/data/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ThemeState extends ChangeNotifier{
  ThemeMode themeMode = ThemeMode.system;

  bool get isDarkMode {
    if(themeMode == ThemeMode.system) {
      final brightness = SchedulerBinding.instance?.window.platformBrightness;
      return brightness == Brightness.dark;
    } else {
      return themeMode == ThemeMode.dark;
    }
  }
  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  String get logo => isDarkMode ? Constants.logo_dark_path : Constants.logo_white_path;
}

class ThemeConst {
  static const greyColor = Color(0xFFE7E6F5);
  static const greenColor = Color(0xFF00E9A5);
  static const redColor = Color(0xFFFF5153);
  static const iconColor = redColor;
  static const primaryColor = redColor;

  static const padding = 20.0;

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xFF1E2637),
    primaryColor: redColor,
    accentColor: greenColor,
    colorScheme: ColorScheme.dark(),
    iconTheme: IconThemeData(color: iconColor, opacity: 0.8),
  );
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: redColor,
    accentColor: greenColor,
    colorScheme: ColorScheme.light(),
    iconTheme: IconThemeData(color: iconColor, opacity: 0.8),
  );

  static const font1 = 14.0;
  static const font2 = 19.0;
  static const font3 = 21.0;
  static final textGrey = Color (0xFF535B6D);

  static final text1 = GoogleFonts.comfortaa(fontSize: ThemeConst.font1);

  static final poppinsText1 = GoogleFonts.poppins(fontSize: ThemeConst.font1);
  static final poppinsText2 = GoogleFonts.poppins(fontSize: ThemeConst.font2);
}