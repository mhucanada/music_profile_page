import 'package:flutter/material.dart';
import 'package:profile_page/models/accounts_model.dart';
import 'package:profile_page/models/add_new_account_model.dart';

class CameraScreen extends StatefulWidget {
  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: dummyData.length,
              itemBuilder: (context, i) => new Column(
                children: <Widget>[
                  new Divider(
                    height: 10.0,
                  ),
                  new ListTile(
                    leading: new CircleAvatar(
                      foregroundColor: Theme.of(context).primaryColor,
                      backgroundColor: Colors.white,
                      backgroundImage: new AssetImage(dummyData[i].accountlogo),
                    ),
                    title: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Text(
                          dummyData[i].accountname,
                          style: new TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.all(8.0),
          child: RaisedButton(
            textColor: Colors.black,
            color: Color(0xFF4DD0F0),
            child: Text('+ Add a New Account'),
            onPressed: () {
              // This opens a new page to add accounts

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondRoute(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

// THIS IS THE OLD CODE
///class SecondRoute extends StatelessWidget {
//  // This is page that opens when the button is pressed
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: new AppBar(
//        automaticallyImplyLeading: false,
//        title: Text("Add New Account"),
//        leading: IconButton(
//          icon: Icon(Icons.arrow_back),
//          onPressed: () => Navigator.pop(context, false),
//        ),
//      ),
//      body: new Stack(
//        children: <Widget>[
//          Positioned(
//            //This is the spotify logo
//            bottom: 450, //Change these values to reposition the logo
//            left: 40,
//            child: new Image(
//              image: AssetImage('assets/images/spotify.png'),
//              height: 70.0,
//              width: 70.0,
//            ),
//          ),
//          Positioned(
//            //This is the Youtube Music logo
//            bottom: 320, //Change these values to reposition the logo
//            left: 30,
//            child: new Image(
//              image: AssetImage('assets/images/youtube.png'),
//              height: 90.0,
//              width: 90.0,
//            ),
//          ),
//          Positioned(
//            //This is the apple music logo
//            bottom: 220, //Change these values to reposition the logo
//            left: 40,
//            child: new Image(
//              image: AssetImage('assets/images/applemusic.png'),
//              height: 70.0,
//              width: 70.0,
//            ),
//          ),
//          Column(
//            children: [
//              //This is for Adding a Spotify Account
//              Container(
//                alignment: Alignment.bottomCenter,
//                margin: EdgeInsets.only(
//                    left: 90.0, right: 10.0, top: 95.0, bottom: 10.0),
//                //Adjust these values to change the position of the button
//                child: RaisedButton(
//                    textColor: Colors.black,
//                    color: Color(0xFF4DD0F0),
//                    child: Text('+ Add a Spotify Account'),
//                    onPressed: () {}),
//              ),
//            ],
//          ),
//          Column(
//            children: [
//              //This is for adding a Youtube Music Account
//              Container(
//                alignment: Alignment.bottomCenter,
//                margin: EdgeInsets.only(
//                    left: 90.0, right: 10.0, top: 215.0, bottom: 10.0),
//                //Adjust these values to change the position of the button
//                child: RaisedButton(
//                    textColor: Colors.black,
//                    color: Color(0xFF4DD0F0),
//                    child: Text('+ Add a Youtube Music Account'),
//                    onPressed: () {}),
//              ),
//            ],
//          ),
//          Column(
//            children: [
//              // This is for adding a Apple Music Account
//              Container(
//                alignment: Alignment.bottomCenter,
//                margin: EdgeInsets.only(
//                    left: 90.0, right: 10.0, top: 320.0, bottom: 10.0),
//                //Adjust these values to change the position of the button
//                child: RaisedButton(
//                    textColor: Colors.black,
//                    color: Color(0xFF4DD0F0),
//                    child: Text('+ Add an Apple Music Account'),
//                    onPressed: () {}),
//              ),
//            ],
//          ),
//        ],
//      ),
//    );
//  }
//}
