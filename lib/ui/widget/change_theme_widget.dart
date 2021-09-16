import 'package:travel_buddy/data/provider/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangeThemeButtonWidget extends StatelessWidget {
  const ChangeThemeButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeState>(context);
    return Switch.adaptive(
        value: themeProvider.isDarkMode,
        onChanged: (value) {
          final provider = Provider.of<ThemeState>(context, listen: false);
          provider.toggleTheme(value);
        }
    );
  }
}
  