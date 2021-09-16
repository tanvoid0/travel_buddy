import 'package:flutter/services.dart';
import 'package:travel_buddy/data/constant/constants.dart';
import 'package:travel_buddy/data/provider/app_state.dart';
import 'package:travel_buddy/data/provider/theme_state.dart';
import 'package:travel_buddy/data/service/app_config.dart';
import 'package:travel_buddy/ui/page/app_nav.dart';
import 'package:travel_buddy/ui/page/auth/auth_page.dart';
import 'package:travel_buddy/ui/page/home/home_page.dart';
import 'package:travel_buddy/ui/page/profile_page.dart';
import 'package:travel_buddy/ui/page/auth/welcome_page.dart';
import 'package:travel_buddy/ui/page/intro/on_boarding_page.dart';
import 'package:travel_buddy/ui/page/intro/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';


void main({String? env}) async {
  // Load env variables
  await dotenv.load(fileName: ".env");
  WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

  // Load config
  // final config = await AppConfig.forEnvironment(env);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const title = "Daery";
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppState()),
        ChangeNotifierProvider(create: (_) => ThemeState()),
      ],
      child: Consumer<AppState>(
      builder: (context, appState, _ ){
        final themeProvider = Provider.of<ThemeState>(context);

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: title,
          themeMode: themeProvider.themeMode,
          theme: ThemeConst.lightTheme,
          darkTheme: ThemeConst.darkTheme,
          home: appState.splashFinished ? const AppNav() : const SplashPage(),
          onGenerateRoute: (RouteSettings settings) {
            print("Build route for ${settings.name} and res: ${settings.arguments}");
            var routes = <String, WidgetBuilder>{
              AuthPage.routeName: (ctx) => AuthPage(authMode: settings.arguments as AuthMode),
              HomePage.routeName: (ctx) => const HomePage(),
              AppNav.routeName: (ctx) => const AppNav(),
            };
            WidgetBuilder builder = routes[settings.name] as WidgetBuilder;
            return MaterialPageRoute(builder: (ctx) => builder(ctx));
          }
          // routes: {
          //   AuthPage.routeName: (context) => AuthPage(),
          // }
        );
      },
      ),
    );
  }
}
