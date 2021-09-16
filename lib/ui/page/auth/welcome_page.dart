import 'package:travel_buddy/data/constant/constants.dart';
import 'package:travel_buddy/ui/widget/form/button_widget.dart';
import 'package:flutter/material.dart';

import 'auth_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // Background
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image:
                    AssetImage('assets/images/background/login_background.png'),
              ),
            ),
          ),
          Positioned(
            top: 150,
            child: Image.asset(
              Constants.logo_white_path,
              scale: 2.5,
            ),
          ),

          // Buttons
          Positioned(
            bottom: 100,
            child: Column(
              children: <Widget>[
                ButtonWidget(
                  title: "Log In",
                  block: true,
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, AuthPage.routeName, arguments: AuthMode.Login);
                  },
                ),
                ButtonWidget(
                  title: "Create an Account",
                  block: true,
                  color: Theme.of(context).primaryColor,
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, AuthPage.routeName, arguments: AuthMode.Register);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
