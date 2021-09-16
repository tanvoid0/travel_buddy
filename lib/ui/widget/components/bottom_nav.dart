import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

Widget bottomNav(BuildContext context, Function onTap, int index) {
  return  Container(
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
      boxShadow: [
        BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
      ],
    ),
    child: ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(30.0),
        topRight: Radius.circular(30.0),
      ),
      child: BottomNavigationBar(
        unselectedItemColor: Colors.black54,
        selectedItemColor: Theme.of(context).primaryColor,
        showUnselectedLabels: true,
        items: <BottomNavigationBarItem>[
          navItem(FontAwesome.location_arrow, "Trip"),
          navItem(MaterialIcons.landscape, "Stories"),
          navItem(Feather.home, "Home"),
          navItem(FontAwesome.leaf, "Support"),
          navItem(Icons.chat, "Chat"),
        ],
        onTap: (i) => onTap(i),
        currentIndex: index,
      ),
    ),
  );
}

BottomNavigationBarItem navItem(IconData icon, String label) {
  return  BottomNavigationBarItem(
    icon: Icon(icon),
    label: label,
  );
}