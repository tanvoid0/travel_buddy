import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleHeader extends StatelessWidget {
  const TitleHeader({Key? key, required this.title, this.onPressed})
      : super(key: key);
  final String title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Flexible(
          child: Text(title,
              style: GoogleFonts.comfortaa(
                  fontSize: 48 * .4, fontWeight: FontWeight.bold)),
        ),
        TextButton(
          child: Text("See All",
              style: GoogleFonts.comfortaa(
                  fontSize: 28 * .4, fontWeight: FontWeight.bold)),
          onPressed: onPressed,
        ),
      ],
    );
  }
}
