import 'package:travel_buddy/data/constant/constants.dart';
import 'package:travel_buddy/data/provider/theme_state.dart';
import 'package:travel_buddy/ui/page/home/home_page.dart';
import 'package:travel_buddy/ui/widget/components/header.dart';
import 'package:travel_buddy/ui/widget/form/button_widget.dart';
import 'package:travel_buddy/ui/widget/form/input_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class AuthPage extends StatefulWidget {
  static const routeName = "/auth";
  const AuthPage({Key? key, this.authMode=AuthMode.Login}) : super(key: key);
  final AuthMode authMode;

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  AuthMode? mode;

  @override
  initState() {
    super.initState();
    mode = widget.authMode;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final logo = Provider.of<ThemeState>(context).logo;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
              child: ListView(
            children: [
              Header(child: Container(
                height: mode == AuthMode.Login ? 300 : 250,
                color: Theme.of(context).primaryColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: size.width * .80,
                      child: Image.asset(logo),
                    ),
                    SizedBox(height: 30),
                    if (mode == AuthMode.Login)
                      Text(
                        "Welcome Back!",
                        style: GoogleFonts.nunito(
                          fontSize: 20,
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                      ),
                    SizedBox(height: 50),
                  ],
                ),
              )),
              if (mode == AuthMode.Register) InputWidget(title: "Name"),
              InputWidget(title: "Mobile or Email"),
              InputWidget(
                title: "Password",
                password: true,
                suffixIcon: Icons.visibility,
              ),
              if (mode == AuthMode.Login)
                Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 20.0),
                        child: TextButton(
                          child: Text("Forgot Password?",
                              style: GoogleFonts.comfortaa(
                                color: Constants.greyColor,
                              )),
                          onPressed: () {},
                        ),
                      )
                    ]),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: ButtonWidget(
                  title: mode == AuthMode.Register ? "Register" : "Login",
                  block: true,
                  color: Theme.of(context).primaryColor,
                  onPressed: (){
                    Navigator.pushNamed(context, HomePage.routeName);
                  },
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Divider(
                        thickness: 1.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Text("or log in with",
                      style: GoogleFonts.nunito(
                        color: Constants.greyColor,
                      )),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Divider(
                        thickness: 1.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // Social Auth
                  ButtonWidget(
                      color: Color(0xFF456AFE),
                      prefixIcon: FontAwesome.facebook_f),
                  ButtonWidget(
                      color: Colors.red, prefixIcon: FontAwesome.google),
                  ButtonWidget(
                      color: Colors.grey, prefixIcon: FontAwesome.apple),
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: <Widget>[
                  Text(
                    mode == AuthMode.Login
                        ? "Don't Have an account?"
                        : "Already have an account?",
                    style: GoogleFonts.comfortaa(
                      color: Constants.greyColor,
                    ),
                  ),
                  TextButton(
                    child: Text(
                      mode == AuthMode.Login ? "Register" : "Login",
                      style: GoogleFonts.comfortaa(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        mode = mode == AuthMode.Login
                            ? AuthMode.Register
                            : AuthMode.Login;
                      });
                    },
                  ),
                ],
              ),
            ],
          )),
          if (mode == AuthMode.Register)
            Positioned(
              top: 170,
              child: MaterialButton(
                onPressed: () {},
                color: Theme.of(context).scaffoldBackgroundColor,
                textColor: Theme.of(context).primaryColor,
                child: Icon(Feather.camera, color: Theme.of(context).primaryColor, size: 40),
                padding: EdgeInsets.all(30),
                shape: CircleBorder(),
              ),

              // ClipOval(
              //   child: Material(
              //     elevation: 2.0,
              //     color: Theme.of(context).scaffoldBackgroundColor,
              //     child: InkWell(
              //       splashColor: Theme.of(context).primaryColor,
              //       onTap: () {},
              //       child: SizedBox(
              //           width: 90,
              //           height: 90,
              //           child: Icon(Feather.camera, color: Colors.black, size: 40)),
              //     ),
              //   ),
              // ),
            ),
        ],
      ),
    );
  }
}



// AppBar(
// toolbarHeight: 250,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.vertical(
// bottom: Radius.circular(150),
// ),
// ),
// )
