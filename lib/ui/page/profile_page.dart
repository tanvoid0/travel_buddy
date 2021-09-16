import 'package:travel_buddy/data/provider/theme_state.dart';
import 'package:travel_buddy/main.dart';
import 'package:travel_buddy/ui/widget/change_theme_widget.dart';
import 'package:travel_buddy/ui/widget/profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final text = Provider.of<ThemeState>(context).themeMode == ThemeMode.dark ?
        "DarkTheme" : "LightTheme";
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(MyApp.title),
        actions: [
          ChangeThemeButtonWidget(),
        ]
      ),
      body: ProfileWidget(),
    );
  }
}
