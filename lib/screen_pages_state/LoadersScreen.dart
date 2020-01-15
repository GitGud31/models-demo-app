import 'package:flutter/material.dart';

class LoadersScreen extends StatefulWidget {
  @override
  _LoadersScreenState createState() => _LoadersScreenState();
}

class _LoadersScreenState extends State<LoadersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loaders list'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('To be added soon !'),
      ),
    );
  }
}