import 'package:flutter/material.dart';
import 'package:profile_page/ProfilePageHome.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Profile Page",
      theme: new ThemeData(
        primaryColor: new Color(0xff4dd0f0),
        accentColor: new Color(0xff25D366),
      ),
      debugShowCheckedModeBanner: false,
      home: new ProfilePageHome(),
    );
  }
}
