import 'dart:async';

import 'package:travel_buddy/data/provider/app_state.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'on_boarding_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool _initialized = false;
  final time = int.tryParse(dotenv.env['SPLASH_TIME'] ?? '0');
  bool splashDone = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_initialized) {
      _initialized = true;

      Timer(const Duration(milliseconds: 2000), () async {
        setState(() {
          splashDone = true;
        });
        final bool showOnBoarding = dotenv.get('SHOW_ON_BOARDING') == 'true';
        print(showOnBoarding);
        if (!showOnBoarding) {
          await Provider.of<AppState>(context, listen: false)
              .setSplashFinished();
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: !splashDone ? const SplashView() : const OnBoardingPage(),
    );
  }
}

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        // Background Image
        Container(
          // TODO: Add Shadow to image
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/background/welcome.png'),
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black38, Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),

        // Title
        Positioned(
          top: 200,
          child: Image.asset(
            'assets/images/ui/logo.png',
            fit: BoxFit.cover,
            scale: 2.3,
          ),
        ),
        Positioned(
          left: 50,
          bottom: 100,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Hello!",
                style: GoogleFonts.nunito(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                "Welcome to\ntraveler's heaven",
                maxLines: 2,
                style: GoogleFonts.comfortaa(
                  fontSize: 30,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
