import 'package:flutter/material.dart';
import 'pages/status_screen.dart';
import 'pages/account_screen.dart';
import 'pages/info_screen.dart';


class ProfilePageHome extends StatefulWidget {
  @override
  _ProfilePageHomeState createState() => _ProfilePageHomeState();
}

class _ProfilePageHomeState extends State<ProfilePageHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Profile Page"),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(text: "ACCOUNTS"),
            new Tab(text: "INFO"),
            new Tab(text: "STATUS"),
          ],
        ),
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
          ),
          new Icon(Icons.more_vert)
        ],
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new CameraScreen(),
          new ChatScreen(),
          new StatusScreen(),
        ],
      ),
     
    );
  }
}
