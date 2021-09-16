import 'package:travel_buddy/data/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputWidget extends StatelessWidget {
  InputWidget({Key? key, required this.title, this.suffixIcon, this.password=false})
      : super(key: key);

  final IconData? suffixIcon;
  final String title;
  final bool password;

  TextStyle style = GoogleFonts.comfortaa(fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: TextField(
        obscureText: password,
        style: style,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          hintText: this.title,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
            borderSide: BorderSide(
              color: Constants.greyColor,
              width: 3.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 3.0,
            ),
          ),
          suffixIcon: Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(this.suffixIcon, color: Constants.greyColor),
          ),
        ),
      ),
    );
  }
}
