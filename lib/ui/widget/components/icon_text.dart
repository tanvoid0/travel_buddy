import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_buddy/data/provider/theme_state.dart';

class IconText extends StatelessWidget {
  const IconText({Key? key, required this.icon, required this.text})
      : super(key: key);
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: <Widget>[
          Icon(icon, color: Colors.grey),
          const SizedBox(width: 5),
          Text(
            text,
            style: GoogleFonts.nunito(
              fontWeight: FontWeight.w300,
              color: ThemeConst.textGrey,
              fontSize: ThemeConst.font1,
            ),
          ),
        ],
      ),
    );
  }
}
