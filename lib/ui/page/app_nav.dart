import 'package:flutter/material.dart';
import 'package:travel_buddy/ui/page/home/home_page.dart';
import 'package:travel_buddy/ui/page/story/story_page.dart';
import 'package:travel_buddy/ui/page/support/support_page.dart';
import 'package:travel_buddy/ui/page/trip/trip_page.dart';
import 'package:travel_buddy/ui/widget/components/bottom_nav.dart';

import 'chat/chat_page.dart';

class AppNav extends StatefulWidget {
  static const routeName = "/app";
  const AppNav({Key? key}) : super(key: key);

  @override
  _AppNavState createState() => _AppNavState();
}

class _AppNavState extends State<AppNav> {
  final pages = [
    const TripPage(),
    const StoryPage(),
    const HomePage(),
    const SupportPage(),
    const ChatPage(),
  ];
  int index = 3;

  pageNav(int i) {
    setState(() {
      index = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: index,
        children: pages,
      ),
      bottomNavigationBar: bottomNav(context, pageNav, index),
    );
  }
}
