import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:travel_buddy/data/service/service.dart';

final splash =  dotenv.get('SHOW_SPLASH') == 'false';
final onBoarding = dotenv.get('SHOW_ON_BOARDING') == 'false';

class AppState extends ChangeNotifier {
  static const _LOG = "APP STATE";
  // Auth Variables

  // Loading Holder
  bool _loading = false;
  bool get loading => _loading;
  set loading(value){
    _loading = value;
    notifyListeners();
  }

  // Splash
  bool _splashFinished = splash;
  bool get splashFinished => _splashFinished;
  set splashFinished(bool value) {
    _splashFinished = value;
    notifyListeners();
  }

  Future<void> setSplashFinished() async {
    splashFinished = true;
  }


  // On Boarding
  bool _onBoardingShow = onBoarding;
  bool get onBoardingShow => _onBoardingShow;
  set onBoardingShow(bool value) {
    _onBoardingShow = value;
    notifyListeners();
  }

}