import 'package:flutter/material.dart';
import 'package:travel_buddy/data/provider/theme_state.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      shape: const ContinuousRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(70),
          bottomRight: Radius.circular(70),
        ),
      ),
      backgroundColor: ThemeConst.primaryColor,
      title: Text(title),
      centerTitle: true,
      actions: const <Widget>[
        Icon(Icons.search),
        SizedBox(width: 20),
      ],
    );
  }
}
