import 'package:flutter/material.dart';
import 'package:travel_buddy/data/model/tab.dart';
import 'package:travel_buddy/data/provider/theme_state.dart';

// Tutorial https://medium.com/codechai/flutter-boring-tab-to-cool-tab-bfcb1a93f8d0
class CustomTabWidget extends StatefulWidget {
  const CustomTabWidget({Key? key, required this.tabs}) : super(key: key);
  final List<TabModel> tabs;

  @override
  _CustomTabWidgetState createState() => _CustomTabWidgetState();
}

class _CustomTabWidgetState extends State<CustomTabWidget>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController =
        TabController(vsync: this, length: widget.tabs.length, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget.tabs.length,
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: const BorderRadius.all(Radius.circular(25.0)),
                border: Border.all(color: Theme.of(context).primaryColor),
              ),
              child: TabBar(
                // controller: tabController,
                labelColor: Theme.of(context).primaryColor,
                unselectedLabelColor: Theme.of(context).scaffoldBackgroundColor,
                indicator: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
                tabs: widget.tabs.map((item) => CustomTab(item.name)).toList(),
              ),
            ),
          ),
          const SizedBox(height: ThemeConst.padding),
          TabBarView(
            // controller: tabController,
            children: widget.tabs.map((item) => item.tab).toList(),
          ),
        ],
      ),
    );
  }
}

Widget CustomTab(String name) {
  return Tab(
    text: name,
  );
}
