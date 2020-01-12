import 'package:flutter/material.dart';
import 'screen_pages_state/ButtonsPage.dart';
import 'test.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final double _width = 180.0;
  final double _height = 45.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: _width,
              height: _height,
              child: RaisedButton(
                color: Colors.redAccent,
                child: Text('Buttons'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ButtonsPage(),
                    ),
                  );
                },
              ),
            ),
            _buildSpace(),
            Container(
              width: _width,
              height: _height,
              child: RaisedButton(
                color: Colors.greenAccent,
                child: Text('Login Screens'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ForTest(),
                    ),
                  );
                },
              ),
            ),
            _buildSpace(),
            Container(
              width: _width,
              height: _height,
              child: RaisedButton(
                color: Colors.orangeAccent,
                child: Text('Loaders'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ForTest(),
                    ),
                  );
                },
              ),
            ),
            _buildSpace(),
            Container(
              width: _width,
              height: _height,
              child: RaisedButton(
                color: Colors.pinkAccent,
                child: Text('Rating App'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ForTest(),
                    ),
                  );
                },
              ),
            ),
            _buildSpace(),
            _buildSpace(),
            _buildSpace(),
            Container(
              width: _width,
              height: _height,
              child: RaisedButton(
                color: Colors.blueAccent,
                child: Text('Tempo Testing'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ForTest(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildPage(Color color, String text) {
    return Container(
      color: color,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 50.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildSpace() {
    return SizedBox(
      height: 15.0,
    );
  }
}
