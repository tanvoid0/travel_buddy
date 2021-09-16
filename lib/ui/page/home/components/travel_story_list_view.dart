import 'package:cached_network_image/cached_network_image.dart';
import 'package:travel_buddy/data/constant/theme.dart';
import 'package:travel_buddy/data/model/travel_story/travel_story.dart';
import 'package:travel_buddy/ui/page/story/components/story_card.dart';
import 'package:travel_buddy/ui/widget/components/icon_text.dart';
import 'package:travel_buddy/ui/widget/components/title_header.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TravelStoryListView extends StatelessWidget {
  const TravelStoryListView({Key? key, required this.data}) : super(key: key);
  final List<TravelStory> data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const TitleHeader(title: "Travel Stories"),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: data.length,
          itemBuilder: (context, index) => StoryCard(data: data[index]),
        )
      ],
    );
  }
}

