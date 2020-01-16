import 'package:flutter/material.dart';
import 'package:flutter_login_screens/rating/SimpleFiveStarRating.dart';

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
      body: Container(
        margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SimpleFiveStarRating(
              color: Colors.greenAccent,
              size: 20.0,
              initialRatingValue: 0,
              rated: (int value) {
                setState(() {});
              },
            ),
            SimpleFiveStarRating(
              color: Colors.red,
              size: 40.0,
              initialRatingValue: 4,
              rated: (int value) {
                setState(() {});
              },
            ),
           SimpleFiveStarRating(
                color: Colors.orange,
                size: 55.0,
                initialRatingValue: 3,
                rated: (int value) {
                  setState(() {});
                },
              ),
           
            SimpleFiveStarRating(
              color: Colors.purple,
              size: 50.0,
              initialRatingValue: 1,
              rated: (int value) {
                setState(() {});
              },
            ),
            SimpleFiveStarRating(
              color: Colors.blue,
              size: 40.0,
              initialRatingValue: 0,
              rated: (int value) {
                setState(() {});
              },
            ),
            SimpleFiveStarRating(
              color: Colors.red,
              size: 25.0,
              initialRatingValue: 4,
              rated: (int value) {
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
