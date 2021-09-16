import 'package:card_swiper/card_swiper.dart';
import 'package:travel_buddy/data/model/user/user.dart';
import 'package:travel_buddy/data/provider/theme_state.dart';
import 'package:travel_buddy/ui/widget/components/card_view.dart';
import 'package:travel_buddy/ui/widget/components/title_header.dart';
import 'package:flutter/material.dart';

class FavoriteTransportationListView extends StatelessWidget {
  const FavoriteTransportationListView({Key? key, required this.data}) : super(key: key);
  final List<User> data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: ThemeConst.padding),
        const TitleHeader(title: "Featured Local Transportations"),
        SizedBox(
          height: 330,
          child: Swiper(
            itemBuilder: (ctx, index) => CardView(
              image: data[index].image,
              title: data[index].name,
              address: data[index].address,
              rating: data[index].rating.guide,
            ),
            itemCount: data.length,
            viewportFraction: 0.8,
            scale: 0.9,
          ),
        ),
        const SizedBox(height: ThemeConst.padding),
      ],
    );
  }
}
