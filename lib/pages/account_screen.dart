import 'package:flutter/material.dart';

class CameraScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      floatingActionButton: new FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          child: new Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            );
          }),
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
}
