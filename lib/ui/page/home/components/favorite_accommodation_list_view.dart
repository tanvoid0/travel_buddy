import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:travel_buddy/data/model/accommodation/accommodation.dart';
import 'package:travel_buddy/data/provider/theme_state.dart';
import 'package:travel_buddy/ui/widget/components/card_view.dart';
import 'package:travel_buddy/ui/widget/components/icon_text.dart';
import 'package:travel_buddy/ui/widget/components/title_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoriteAccommodationListView extends StatelessWidget {
  const FavoriteAccommodationListView({Key? key, required this.data})
      : super(key: key);
  final List<Accommodation> data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: ThemeConst.padding),
        const TitleHeader(title: "Featured Accommodations"),
        SizedBox(
          height: 330,
          child: Swiper(
            itemBuilder: (BuildContext ctx, int index) => SizedBox(
              height: 100,
              width: 100,
              child: CardView(
                image: data[index].image,
                title: data[index].title,
                address: data[index].location,
                rating: data[index].rating,
              ),
            ),
            itemCount: data.length,
            viewportFraction: 0.8,
            scale: 0.9,
          ),
        ),
        const SizedBox(height: ThemeConst.padding),
        // SwiperCard
      ],
    );
  }
}

class AccommodationCard extends StatelessWidget {
  const AccommodationCard({Key? key, required this.item}) : super(key: key);
  final Accommodation item;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: <Widget>[
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: CachedNetworkImageProvider(item.image),
              )
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(item.title, style: GoogleFonts.poppins(fontSize: 32 * 0.5)),
                SizedBox(height: 10),
                IconText(
                  icon: Icons.location_pin,
                  text: item.location,
                ),
                SizedBox(height: 5),
                RatingBarIndicator(
                  itemBuilder: (context, _) => Icon(Icons.star, color: Theme.of(context).primaryColor),
                  itemCount: 5,
                  itemSize: 20.0,
                  direction: Axis.horizontal,
                  unratedColor: Color(0xFFC8C7DC),
                  rating: 4,
                )
              ]
            )
          )
        ],
      ),
    );
  }
}
