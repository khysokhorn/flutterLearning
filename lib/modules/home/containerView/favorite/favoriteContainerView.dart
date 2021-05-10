import 'package:flutter/material.dart';
import 'package:pshar_khmer/constants/app_constants.dart';
import 'package:pshar_khmer/widgets/widgets.dart';

import 'AllItemtab.dart';

class FavoriteContainerView extends StatefulWidget {
  @override
  _FavoriteContainerViewState createState() => _FavoriteContainerViewState();
}

class _FavoriteContainerViewState extends State<FavoriteContainerView>
    with SingleTickerProviderStateMixin {
  List<String> tabNames = ["All Items", "Brands"];
  TabController tabController;

  List<Widget> tabBody = [
    AllItemTab(),
    Container(
      child: Center(
        child: Text("Brands"),
      ),
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: tabNames.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          cartButton(),
          SizedBox(
            width: primaryMargin,
          ),
        ],
        title: Text("Save Items"),
        bottom: TabBar(
          controller: tabController,
          tabs: tabNames
              .map(
                (tabTitle) => Tab(
                  text: tabTitle,
                ),
              )
              .toList(),
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: tabBody,
      ),
    );
  }
}
