import 'dart:convert';

import 'package:flutter/services.dart';

class AppConfig {
  final String server;

  AppConfig({required this.server});

  static Future<AppConfig> forEnvironment(String? env) async {
    // set default to dev if nothing was passwd
    env = env ?? "dev";

    // load the json file
    final contents = await rootBundle.loadString(
      'assets/config/$env.json',
    );

    // decode json
    final json = jsonDecode(contents);

    // convert JSON into an instance of our AppConfig class
    return AppConfig(server: json['server']);
  }
}