import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:travel_buddy/data/constant/theme.dart';
import 'package:travel_buddy/data/model/place/place.dart';
import 'package:travel_buddy/ui/page/place/place_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrendingPlaceSwiper extends StatelessWidget {
  TrendingPlaceSwiper({Key? key, required this.data}) : super(key: key);
  final PageController controller = PageController(viewportFraction: 0.877);
  final List<Place> data;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 218.4,
      margin: EdgeInsets.only(top: 16),
      child: PageView(
        physics: BouncingScrollPhysics(),
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: List.generate(
          data.length,
          (int index) => GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PlacePage(place: data[index]),
              ));
            },
            child: Container(
              margin: EdgeInsets.only(right: 28.8, bottom: 10),
              height: 218.4,
              decoration: BoxDecoration(
                borderRadius: imageBorder,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: CachedNetworkImageProvider(
                    data[index].image,
                  ),
                ),
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    bottom: 30,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 50,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      color: Color(0xFF374157).withOpacity(0.78),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            data[index].title,
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 40 * 0.5,
                            ),
                          ),
                          Text(
                            "${data[index].going} going",
                            style: GoogleFonts.lato(
                              color: Theme.of(context).primaryColor,
                              fontSize: 28*0.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Positioned(
                  //   bottom: 19.2,
                  //   left: 19.2,
                  //   child: ClipRRect(
                  //     borderRadius: BorderRadius.circular(4.8),
                  //     child: BackdropFilter(
                  //       filter: ImageFilter.blur(
                  //         sigmaY: 19.2,
                  //         sigmaX: 19.2,
                  //       ),
                  //       child: Container(
                  //         height: 36,
                  //         padding: EdgeInsets.only(
                  //           left: 16.72,
                  //           right: 14.4,
                  //         ),
                  //         alignment: Alignment.centerLeft,
                  //         child: Row(
                  //           children: <Widget>[
                  //             Icon(Icons.location_pin),
                  //             SizedBox(width: 9.52),
                  //             Text(
                  //               data[index].title,
                  //               style: GoogleFonts.lato(
                  //                 fontWeight: FontWeight.w700,
                  //                 color: Colors.white,
                  //                 fontSize: 12.8,
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // Positioned(
                  //   bottom: 19.2,
                  //   right: 19.2,
                  //   child: ClipRRect(
                  //     borderRadius: BorderRadius.circular(4.8),
                  //     child: BackdropFilter(
                  //       filter: ImageFilter.blur(
                  //         sigmaY: 19.2,
                  //         sigmaX: 19.2,
                  //       ),
                  //       child: Container(
                  //         height: 36,
                  //         padding: EdgeInsets.only(
                  //           left: 16.72,
                  //           right: 14.4,
                  //         ),
                  //         alignment: Alignment.centerLeft,
                  //         child: Row(
                  //           children: <Widget>[
                  //             Text(
                  //               "${data[index].going} going",
                  //               style: GoogleFonts.lato(
                  //                 fontWeight: FontWeight.w700,
                  //                 color: Theme.of(context).primaryColor,
                  //                 fontSize: 10,
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
