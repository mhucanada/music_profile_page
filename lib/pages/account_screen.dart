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
                child: Text('+ Add a New Account'),
                onPressed: () {
                  // This opens a new page to add accounts
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondRoute()),
                  );
                }),
          )
        ]),
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
    );
  }
