import 'package:flutter/material.dart';

class RatingAppScreen extends StatefulWidget {
  @override
  _RatingAppScreenState createState() => _RatingAppScreenState();
}

class _RatingAppScreenState extends State<RatingAppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rating App list'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('To be added soon !'),
      ),
    );
  }
}