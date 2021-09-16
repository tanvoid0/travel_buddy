import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_buddy/data/constant/theme.dart';
import 'package:travel_buddy/data/model/travel_story/travel_story.dart';
import 'package:travel_buddy/data/provider/theme_state.dart';
import 'package:travel_buddy/ui/widget/components/custom_app_bar.dart';
import 'package:travel_buddy/ui/widget/components/custom_avatar.dart';
import 'package:travel_buddy/ui/widget/components/icon_text.dart';
import 'package:travel_buddy/ui/widget/form/button_widget.dart';
import 'package:travel_buddy/ui/widget/utility/curve_clipper.dart';

class StoryDetails extends StatelessWidget {
  const StoryDetails({Key? key, required this.data}) : super(key: key);
  final TravelStory data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: <Widget>[
      SliverAppBar(
        backgroundColor: Theme.of(context).primaryColor,
        floating: true,
        title: const Text("Story Details"),
        centerTitle: true,
        expandedHeight: 350.0,
        flexibleSpace: Container(
          margin: const EdgeInsets.only(top: 90),
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
      // const CustomAppBar(title: "Story Details"),
      SliverList(
        delegate: SliverChildListDelegate([
          Padding(
            padding: const EdgeInsets.all(ThemeConst.padding),
            child: Column(
              children: <Widget>[
                Text(data.title,
                    style: GoogleFonts.poppins(fontSize: ThemeConst.font3)),
                const SizedBox(height: ThemeConst.padding),
                Row(
                  children: <Widget>[
                    const Expanded(
                      flex: 2,
                      child: CustomAvatar(),
                    ),
                    Expanded(
                      flex: 5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text("Afnan Abdullah",
                              style: GoogleFonts.nunito(
                                  fontSize: ThemeConst.font2,
                                  color: Theme.of(context).primaryColor)),
                          IconText(
                              icon: Icons.location_pin,
                              text: "${data.trip[0]} - ${data.trip[1]}"),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: <Widget>[
                          Text(data.createdAt,
                              style: GoogleFonts.nunito(
                                  fontSize: ThemeConst.font1,
                                  color: ThemeConst.textGrey)),
                          const IconText(
                              icon: Icons.favorite_border_outlined,
                              text: "137 loves"),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: ThemeConst.padding),
                // Description
                Text(data.description,
                    style: GoogleFonts.nunitoSans(fontSize: ThemeConst.font1)),

                const SizedBox(height: ThemeConst.padding),
                // Share to others text
                Row(
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        height: 5,
                        color: ThemeConst.greyColor,
                      ),
                    ),
                    Text("Share to others",
                        style: GoogleFonts.nunito(
                            fontSize: ThemeConst.font1,
                            fontWeight: FontWeight.bold)),
                    Flexible(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        height: 5,
                        color: ThemeConst.greyColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: ThemeConst.padding),

                // Share buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.facebook_outlined, size: 50)),
                    const SizedBox(width: 30),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.facebook_outlined, size: 50)),
                    const SizedBox(width: 30),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.facebook_outlined, size: 50)),
                  ],
                ),

                const SizedBox(height: 30),

                Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              top: ThemeConst.padding,
                              left: ThemeConst.padding,
                              right: ThemeConst.padding),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Comments",
                                  style: GoogleFonts.nunito(
                                      fontSize: ThemeConst.font1,
                                      fontWeight: FontWeight.bold)),
                              const Text("Read all"),
                            ],
                          ),
                        ),
                        const Divider(),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: ThemeConst.padding - 5),
                          child: Row(
                            children: <Widget>[
                              const CustomAvatar(),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text("Saimun Abdullah",
                                            style: GoogleFonts.nunito(
                                                fontSize: ThemeConst.font1,
                                                fontWeight: FontWeight.bold)),
                                        Text('10:51 am - 17/03/2021',
                                            style: GoogleFonts.comfortaa(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w100)),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                        "This is a nice place to enjoy one day tour inside Dhaka"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: ThemeConst.padding - 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  const Icon(Icons.favorite_border_outlined),
                                  const SizedBox(width: 10),
                                  const Text("Useful comment"),
                                ],
                              ),
                              ElevatedButton(
                                child: Text("Write Comment"),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ]),
      )
    ]));
  }
}
