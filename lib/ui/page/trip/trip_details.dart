import 'package:flutter/material.dart';
import 'package:travel_buddy/data/data.dart';
import 'package:travel_buddy/data/model/trip/trip.dart';
import 'package:travel_buddy/data/provider/theme_state.dart';
import 'package:travel_buddy/ui/page/home/components/favorite_accommodation_list_view.dart';
import 'package:travel_buddy/ui/page/home/components/favorite_guid_list_view.dart';
import 'package:travel_buddy/ui/page/home/components/favorite_transportation_list_view.dart';
import 'package:travel_buddy/ui/widget/components/custom_app_bar.dart';

import 'components/trip_card.dart';

class TripDetails extends StatelessWidget {
  const TripDetails(this.trip);

  final Trip trip;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const CustomAppBar(title: "Trip Details"),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.all(ThemeConst.padding),
                child: Column(
                  children: <Widget>[
                    TripCard(
                      data: trip,
                      details: true,
                    ),
                    FavoriteGuideListView(data: users),
                    FavoriteAccommodationListView(data: accommodations),
                    FavoriteTransportationListView(data: users),
                  ]
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
