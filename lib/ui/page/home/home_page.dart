import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:travel_buddy/data/constant/constants.dart';
import 'package:travel_buddy/data/data.dart';
import 'package:travel_buddy/ui/page/home/components/travel_story_list_view.dart';
import 'package:travel_buddy/ui/page/place/place_page.dart';
import 'package:travel_buddy/ui/widget/components/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_buddy/ui/widget/utility/curve_clipper.dart';

import 'components/favorite_accommodation_list_view.dart';
import 'components/favorite_guid_list_view.dart';
import 'components/favorite_transportation_list_view.dart';
import 'components/trending_place_swiper.dart';
import 'components/trip_view.dart';

class HomePage extends StatelessWidget {
  static const routeName = "/home";

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          floating: true,
          title: Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SvgPicture.asset(Constants.logo_white_svg, width: 200),
                  // Profile Icon
                  Container(
                    height: 60,
                    width: 60,
                    margin: const EdgeInsets.only(left: 5, top: 5),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: CachedNetworkImageProvider(
                          Constants.userPicture1,
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ]),
          ),
          // actions: <Widget>[

          // ],
          expandedHeight: 350.0,
          flexibleSpace: Container(
            height: 430.0,
            child: Stack(
              children: <Widget>[
                // Curved Container
                ClipPath(
                  clipper: CurveClipper(),
                  child: Container(
                    color: Theme.of(context).primaryColor,
                    height: 320,
                  ),
                ),

                // Title of Trending places
                Positioned(
                  top: 100,
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Trending Places",
                            style: GoogleFonts.comfortaa(
                              color: Theme.of(context).scaffoldBackgroundColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 48 * 0.4,
                            ),
                          ),
                          TextButton(
                            child: Text(
                              "See all",
                              style: GoogleFonts.comfortaa(
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  fontSize: 28 * 0.4),
                            ),
                            onPressed: () {},
                          ),
                        ]),
                  ),
                ),

                // Trending places swiper
                Align(
                  alignment: Alignment.bottomLeft,
                  child: TrendingPlaceSwiper(data: places),
                ),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    // TripSwiper(data: trips),
                    const SizedBox(height: 10),
                    TravelStoryListView(data: travelStories),
                    const SizedBox(height: 10),
                    FavoriteGuideListView(data: users),
                    const SizedBox(height: 10),
                    FavoriteAccommodationListView(data: accommodations),
                    const SizedBox(height: 10),
                    FavoriteTransportationListView(data: users),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
