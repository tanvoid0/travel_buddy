import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:travel_buddy/data/constant/constants.dart';

class CustomAvatar extends StatelessWidget {
  const CustomAvatar({Key? key, this.size=50, this.image=Constants.userPicture1}) : super(key: key);
  final double size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: CachedNetworkImageProvider(
            image,
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
