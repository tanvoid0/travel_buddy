import 'package:flutter/material.dart';
import 'package:travel_buddy/data/data.dart';
import 'package:travel_buddy/data/provider/theme_state.dart';
import 'package:travel_buddy/ui/widget/components/custom_app_bar.dart';

import 'components/story_card.dart';

class StoryPage extends StatelessWidget {
  const StoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        const CustomAppBar(title: "Stories"),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Padding(
                padding: const EdgeInsets.all(ThemeConst.padding),
                child: Column(
                    children: travelStories.map((item) => StoryCard(data: item)).toList()
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
