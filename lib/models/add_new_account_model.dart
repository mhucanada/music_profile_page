import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Add New Account';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: new AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          automaticallyImplyLeading: false,
          title: Text(
            title,
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
            color: Colors.black,
          ),
        ),
        body: new ListView(
          padding: const EdgeInsets.only(
            top: 15.0,
          ),
          children: <Widget>[
            ListTile(
              leading: new Image(
                image: AssetImage('assets/images/Spotify_Icon_RGB_Green.png'),
                height: 50.0,
                width: 70.0,
              ),
              title: Text(
                "Add New Spotify Account",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              trailing: Icon(
                Icons.add,
                size: 40,
              ),
              onTap: () {
                // add what will happen when it is clicked here
              },
            ),
            ListTile(
              leading: new Image(
                image: AssetImage('assets/images/youtube.png'),
                height: 70.0,
                width: 70.0,
              ),
              title: Text(
                "Add New Youtube Account",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              trailing: Icon(
                Icons.add,
                size: 40,
              ),
              onTap: () {
                // add what will happen when it is clicked here
              },
            ),
            ListTile(
              leading: new Image(
                image: AssetImage('assets/images/applemusic.png'),
                height: 70.0,
                width: 70.0,
              ),
              title: Text(
                "Add New Music Account",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              trailing: Icon(
                Icons.add,
                size: 40,
              ),
              onTap: () {
                // add what will happen when it is clicked here
              },
            ),
          ],
        ),
      ),
    );
  }
}