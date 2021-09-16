import 'package:flutter/material.dart';
import 'package:travel_buddy/data/data.dart';
import 'package:travel_buddy/data/model/tab.dart';
import 'package:travel_buddy/data/provider/theme_state.dart';
import 'package:travel_buddy/ui/widget/components/card_view.dart';
import 'package:travel_buddy/ui/widget/components/custom_app_bar.dart';
import 'package:travel_buddy/ui/widget/utility/custom_tab_widget.dart';

class SupportPage extends StatefulWidget {
  const SupportPage({Key? key}) : super(key: key);

  @override
  State<SupportPage> createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  List<TabModel> tabs = [
    TabModel("Guide", CustomGridView()),
    TabModel("Accommodation", CustomGridView()),
    TabModel("Transportation", CustomGridView()),
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: tabs.length);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: CustomScrollView(
        slivers: <Widget>[
          const CustomAppBar(title: "Support"),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                // Tab Bar
                Padding(
                  padding: const EdgeInsets.all(ThemeConst.padding),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(25.0)),
                        border:
                            Border.all(color: Theme.of(context).primaryColor),
                      ),
                      child: TabBar(
                        // controller: tabController,
                        labelColor: Theme.of(context).primaryColor,
                        unselectedLabelColor:
                            Theme.of(context).scaffoldBackgroundColor,
                        indicator: BoxDecoration(
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                        tabs: tabs.map((item) => CustomTab(item.name)).toList(),
                      ),
                    ),
                  ),
                ),
                // Tab View
                TabBarView(
                  children: tabs.map((item) => item.tab).toList(),
                )
              ],
            ),
          ),


        ],
      ),
    );
  }
}

class CustomGridView extends StatelessWidget {
  const CustomGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      children: users
          .map((item) => CardView(
                image: item.image,
                title: item.name,
                address: item.address,
                rating: item.rating.guide,
              ))
          .toList(),
    );
  }
}

// class GridView extends StatelessWidget {
//   const GridView({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SliverGrid.count(
//         crossAxisCount: 2,
//         mainAxisSpacing: 10,
//         crossAxisSpacing: 10,
//         childAspectRatio: .57,
//         children: users
//             .map((item) => CardView(
//                   image: item.image,
//                   title: item.name,
//                   address: item.address,
//                   rating: item.rating.guide,
//                 ))
//             .toList());
//   }
// }
