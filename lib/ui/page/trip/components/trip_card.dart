import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_buddy/data/model/trip/trip.dart';
import 'package:travel_buddy/data/provider/theme_state.dart';
import 'package:travel_buddy/ui/widget/components/custom_avatar.dart';
import 'package:travel_buddy/ui/widget/components/custom_card.dart';
import 'package:travel_buddy/ui/widget/components/icon_text.dart';
import 'package:travel_buddy/ui/widget/form/button_widget.dart';

import '../trip_details.dart';

class TripCard extends StatelessWidget {
  const TripCard({Key? key, required this.data, this.details=false}) : super(key: key);
  final Trip data;
  final bool details;
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      header: Row(
        children: <Widget>[
          CustomAvatar(image: data.host.image),
          const SizedBox(width: ThemeConst.padding),
          Text("Hosted by", style: ThemeConst.text1.copyWith(color: ThemeConst.greyColor, fontWeight: FontWeight.bold)),
          const SizedBox(width: 5),
          Text(data.host.name, style: ThemeConst.text1.copyWith(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold)),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: ThemeConst.padding),
          Text(data.title, style: GoogleFonts.poppins(fontSize: ThemeConst.font2)),
          const SizedBox(height: ThemeConst.padding),
          IconText(icon: Icons.location_pin, text: "${data.trip[0]} - ${data.trip[1]}"),
          IconText(icon: Icons.calendar_today,text: "${data.date[0]} - ${data.date[1]}"),
          IconText(icon: Icons.attach_money, text: "\$${data.budget.min} - \$${data.budget.max}"),
          const SizedBox(height: ThemeConst.padding),
          Text("About this trip", style: GoogleFonts.poppins(fontSize: ThemeConst.font2)),
          const SizedBox(height: 10),
          Text(data.description, style: GoogleFonts.poppins(fontSize: ThemeConst.font1)),
          const SizedBox(height: ThemeConst.padding),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: data.participants.map((item) => CustomAvatar(image: item.image)).toList(),
              ),
              Text("are joining...", style: ThemeConst.text1.copyWith(color: ThemeConst.greyColor, fontWeight: FontWeight.w300)),
            ]
          ),
          Row(
              children: <Widget>[
                Expanded(
                  child: IconText(icon: Icons.message, text: "3 comments"),
                ),
                if(!details)
                  TextButton(
                    child: Text("Join", style: GoogleFonts.poppins(color: Theme.of(context).primaryColor)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TripDetails(data)),
                      );
                    },
                  ),
              ]
          ),
        ],
      ),
      footer: details ? ButtonWidget(
        color: Theme.of(context).primaryColor,
        title: "Join",
      ) : null,
    );
  }
}
