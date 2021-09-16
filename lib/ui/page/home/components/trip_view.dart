import 'package:travel_buddy/data/model/trip/trip.dart';
import 'package:travel_buddy/ui/page/place/place_page.dart';
import 'package:travel_buddy/ui/widget/components/icon_text.dart';
import 'package:travel_buddy/ui/widget/components/title_header.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TripSwiper extends StatelessWidget {
  TripSwiper({Key? key, required this.data}) : super(key: key);
  final controller = PageController(viewportFraction: 0.877);
  final List<Trip> data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TitleHeader(title: "Dude's Trip"),
        Container(
          height: 230,
          child: PageView(
            physics: BouncingScrollPhysics(),
            controller: controller,
            scrollDirection: Axis.horizontal,
            children: List.generate(
              data.length,
                  (int index) => GestureDetector(
                onTap: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) => PlacePage(place: trips[index]),
                  //   ),
                  // );
                },
                child: TripCard(trip: data[index]),
              ),
            ),
          ),
        ),
      ]
    );
  }
}

class TripCard extends StatelessWidget {
  TripCard({Key? key, required this.trip}) : super(key: key);
  final Trip trip;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: Colors.grey.withOpacity(0.2),
          width: 1,
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Text(trip.description, style: GoogleFonts.poppins(fontSize: 38*.4)),
            // Divider(),
            // IconText(icon: Icons.location_pin, text: "${trip.trip[0]} - ${trip.trip[1]}",),
            // SizedBox(height: 5),
            // IconText(icon: Icons.calendar_today_outlined, text: "${trip.date[0]} - ${trip.date[1]}"),
            // SizedBox(height: 5),
            // IconText(icon: Icons.attach_money, text: "\$${trip.budget.min} - \$${trip.budget.max}"),
            Divider(),
            Row(children: <Widget>[
              Text("Host by ",
                  style: GoogleFonts.comfortaa(
                      color: Colors.grey)),
              Text("Abdullah Afnan",
                  style: GoogleFonts.comfortaa(
                      color: Theme.of(context).primaryColor)),
            ])
          ],
        ),
      ),
    );
  }
}
