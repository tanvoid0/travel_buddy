import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_buddy/data/provider/theme_state.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final bool hasBorder;
  final VoidCallback? onPressed;
  final bool loading;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final bool disabled;
  final Color? color;
  final bool block;

  ButtonWidget({
    this.title = "",
    this.hasBorder = false,
    this.onPressed,
    this.loading = false,
    this.prefixIcon,
    this.suffixIcon,
    this.disabled = false,
    this.color,
    this.block = false,
  });

  @override
  Widget build(BuildContext context) {
    final backgroundColor = Theme.of(context).scaffoldBackgroundColor;
    final primaryColor = Theme.of(context).primaryColor;
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: block ? size.width * 0.8 : null,
      child: ElevatedButton(
        style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
                const EdgeInsets.symmetric(horizontal: 30, vertical: 15)),
            backgroundColor: MaterialStateProperty.all<Color>(
              color ?? Theme.of(context).accentColor,
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: const BorderSide(color: Colors.transparent)))),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (prefixIcon != null) Icon(prefixIcon),
              if (title.isNotEmpty)
                Text(
                  title,
                  style: GoogleFonts.nunito(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: ThemeConst.font3,
                  ),
                ),
              if (suffixIcon != null) Icon(suffixIcon),
            ]),
        onPressed: onPressed ?? () {},
      ),
    );
  }
}
