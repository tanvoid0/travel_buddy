import 'package:flutter/material.dart';

class Constants {
  static const ui_path = "assets/images/ui";
  static const logo_path = "$ui_path/logo.png";
  static const logo_white_path = "$ui_path/logo_white.png";
  static const logo_dark_path = "$ui_path/logo_dark.png";

  static const profile_image_path = "assets/images/user/user1.png";

  static const svg_icon_path = "assets/svg/icon";
  static const logo_white_svg = "$svg_icon_path/logo_white.svg";

  static const largePicture1 = "https://images.unsplash.com/photo-1558024160-4bcccd62f54c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80";
  static const largePicture2 = "https://images.unsplash.com/photo-1613967193490-1d17b930c1a1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80";
  static const largePicture3 = "https://images.unsplash.com/photo-1612862862126-865765df2ded?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80";
  static const largePicture4 = "https://images.unsplash.com/photo-1622890276840-8eabe803e2bb?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80";

  static const userPicture1 = "https://randomuser.me/api/portraits/men/62.jpg";
  static const userPicture2 = "https://randomuser.me/api/portraits/women/47.jpg";
  static const userPicture3 = "https://randomuser.me/api/portraits/women/57.jpg";
  static const greyColor = Color(0xFF8996B4);
}

enum AuthMode {
  Login,
  Register,
}