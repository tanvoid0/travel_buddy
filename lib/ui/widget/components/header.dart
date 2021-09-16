import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  Header({Key? key, required this.child}) : super(key: key);
  Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomShape(),
      child: this.child,
    );
  }
}

class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 100);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 100);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}