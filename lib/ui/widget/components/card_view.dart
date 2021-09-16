import 'package:cached_network_image/cached_network_image.dart';
import 'package:travel_buddy/data/constant/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

import 'icon_text.dart';

class CardView extends StatelessWidget {
  const CardView(
      {Key? key,
      required this.image,
      required this.title,
      required this.address,
      this.rating})
      : super(key: key);
  final String image;
  final String title;
  final String address;
  final double? rating;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        height: 500,
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: imageBorder,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: CachedNetworkImageProvider(image),
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(title,
                        style: GoogleFonts.poppins(fontSize: 32 * 0.5)),
                    const SizedBox(height: 10),
                    IconText(
                      icon: Icons.location_pin,
                      text: address,
                    ),
                    const SizedBox(height: 5),
                    if (rating != null)
                      RatingBarIndicator(
                        itemBuilder: (context, _) =>
                            Icon(Icons.star, color: Theme.of(context).primaryColor),
                        itemCount: 5,
                        itemSize: 20.0,
                        direction: Axis.horizontal,
                        unratedColor: const Color(0xFFC8C7DC),
                        rating: rating ?? 0,
                      )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
