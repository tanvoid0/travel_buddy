import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_buddy/data/constant/constants.dart';
import 'package:travel_buddy/data/data.dart';
import 'package:travel_buddy/data/provider/theme_state.dart';
import 'package:travel_buddy/ui/page/home/home_page.dart';
import 'package:travel_buddy/ui/widget/components/custom_app_bar.dart';
import 'package:travel_buddy/ui/widget/components/custom_avatar.dart';
import 'package:travel_buddy/ui/widget/components/custom_card.dart';
import 'package:travel_buddy/ui/widget/components/icon_text.dart';
import 'package:travel_buddy/ui/widget/form/button_widget.dart';

import 'components/trip_card.dart';

class TripPage extends StatelessWidget {
  const TripPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: <Widget>[
      const CustomAppBar(title: "Trip"),
      SliverList(
        delegate: SliverChildListDelegate(
          [
            Container(
              padding: const EdgeInsets.all(ThemeConst.padding),
              child: Column(
                children: <Widget>[
                  // Trip Pill
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Theme.of(context).primaryColor,
                        ),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Trip Card
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (ctx, i) => TripCard(data: trips[i]),
                    itemCount: trips.length,
                  ),

                  // Create Trip Button
                  ButtonWidget(
                    title: "Create Trip",
                    block: true,
                    color: Theme.of(context).primaryColor,
                    onPressed: (){
                      Navigator.pushNamed(context, HomePage.routeName);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    ]);
  }
}
