import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_buddy/data/constant/theme.dart';
import 'package:travel_buddy/data/model/travel_story/travel_story.dart';
import 'package:travel_buddy/ui/widget/components/icon_text.dart';

import '../story_details.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({Key? key, required this.data}) : super(key: key);
  final TravelStory data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => StoryDetails(data: data))
        );
      },
      child: Card(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: imageBorder,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: CachedNetworkImageProvider(
                        data.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: Stack(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 15),
                            Text(
                              data.title,
                              style: GoogleFonts.nunito(
                                fontSize: 28 * 0.5,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Afnan Abdullah",
                              style: GoogleFonts.nunito(
                                color: Theme.of(context).primaryColor,
                                fontSize: 28 * 0.5,
                              ),
                            ),
                            IconText(icon: Icons.location_pin, text: "${data.trip[0]} - ${data.trip[1]}"),
                            IconText(icon: Icons.watch_later_outlined, text:data.createdAt),
                            IconText(icon: Icons.thumb_up_alt_outlined, text: data.reactions.like.toString()),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  TextButton(
                                    child: Text("Read more",
                                        style: GoogleFonts.comfortaa(
                                          color: Theme.of(context).primaryColor,
                                        )),
                                    onPressed: () {},
                                  ),
                                ]
                            ),
                          ],
                        ),
                      ],
                    )
                ),
              ),
            ],
          )
      ),
    );
  }
}