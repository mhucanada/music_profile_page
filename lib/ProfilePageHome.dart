import 'package:flutter/material.dart';
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
    _tabController = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(115.0),
        child: new AppBar(
          leading: new InkWell(
            // Displays profile picture but I don't know how to center it properly
            onTap: () {
              print("Click Profile Pic");
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset('assets/images/david-jao-profile.jpg'),
            ),
          ),
          centerTitle: true,
          title: new Text(
            // Displays the Profile Page text in the center of the screen
            "Profile Page",
            textAlign: TextAlign.center,
          ),
          elevation: 1.0,
          bottom: new TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              new Tab(text: "ACCOUNTS"),
              new Tab(text: "INFO"),
            ],
          ),
          actions: <Widget>[
            new IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              },
            ),
            new Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
            ),
            new Icon(Icons.more_vert)
          ],
        ),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new CameraScreen(),
          new ChatScreen(),
        ],
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  final results = [
    "hi",
    "bruh",
    "search",
    "flutter",
  ];

  final recentResults = [
    "hi",
    "bruh",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    //actions for app bar
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    //leading icon on the left of the app bar
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    //show some result based on the selection
    return Container(
      height: 100.0,
      width: 100.0,
      child: Card(
        color: Colors.red,
        child: Center(
          child: Text(query),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    //show when someone searches for something
    final suggestionList = query.isEmpty
        ? recentResults
        : results.where((p) => p.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) =>
          ListTile(
            onTap: () {
              showResults(context);
            },
            leading: Icon(Icons.location_city),
            title: RichText(
              text: TextSpan(
                text: suggestionList[index].substring(0, query.length),
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: suggestionList[index].substring(query.length),
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
      itemCount: suggestionList.length,
    );
  }
}
