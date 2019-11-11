import 'package:flutter/material.dart';

class CameraScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        body: Column(children: [
          Container(
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(
                left: 10.0, right: 10.0, top: 500.0, bottom: 10.0), //Adjust these values to change the position of the button
            child: RaisedButton( 
                textColor: Colors.black,
                color: Color(0xFF4DD0F0),
                child: Text('Add a New Account'),
                onPressed: () {
                  // This button opens a new page to add accounts
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondRoute()),
                  );
                },),
          )
        ],),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        title: Text("Add New Account"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: new Stack(
        children: <Widget>[
          Positioned( //This is the spotify logo
            bottom: 450, //Change these values to reposition the logo
            left: 40,
            child: new Image (
            image: AssetImage('assets/spotify.png'),
            height: 70.0,
            width: 70.0,)),
          Positioned( //This is the Youtube Music logo
            bottom: 320, //Change these values to reposition the logo
            left: 30,
            child: new Image (
            image: AssetImage('assets/youtube.png'),
            height: 90.0,
            width: 90.0,)),
          Positioned( //This is the apple music logo
            bottom: 220, //Change these values to reposition the logo
            left: 40,
            child: new Image (
            image: AssetImage('assets/applemusic.png'),
            height: 70.0,
            width: 70.0,)),
          Column(children: [ //This is for Adding a Spotify Account
            Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(
                left: 90.0, right: 10.0, top: 95.0, bottom: 10.0), //Adjust these values to change the position of the button
              child: RaisedButton(
                textColor: Colors.black,
                color: Color(0xFF4DD0F0),
                child: Text('+ Add a Spotify Account'),
                onPressed: () {}),
            )
          ]),
          Column(children: [ //This is for adding a Youtube Music Account
            Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(
                left: 90.0, right: 10.0, top: 215.0, bottom: 10.0), //Adjust these values to change the position of the button
              child: RaisedButton(
                textColor: Colors.black,
                color: Color(0xFF4DD0F0),
                child: Text('+ Add a Youtube Music Account'),
                onPressed: () {}),
            )
          ]),
          Column(children: [ // This is for adding a Apple Music Account
            Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(
                left: 90.0, right: 10.0, top: 320.0, bottom: 10.0), //Adjust these values to change the position of the button
              child: RaisedButton(
                textColor: Colors.black,
                color: Color(0xFF4DD0F0),
                child: Text('+ Add an Apple Music Account'),
                onPressed: () {}),
            )
          ]),
        ],)
    );
  }
}
