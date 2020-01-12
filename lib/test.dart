import 'package:flutter/material.dart';

class ForTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Bar'),
        centerTitle: true,
      ),
      body: Center(child: Text('Testing Screen')),
    );
  }
}