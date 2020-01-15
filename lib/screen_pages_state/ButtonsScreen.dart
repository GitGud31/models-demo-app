import 'package:flutter/material.dart';
import 'package:flutter_login_screens/buttons/RoundGradientOnlyTextButton.dart';
import 'package:flutter_login_screens/buttons/RoundIconAndTextButton.dart';
import 'package:flutter_login_screens/buttons/RoundOnlyIconButton.dart';
import 'package:flutter_login_screens/buttons/RoundOnlyTextButton.dart';

class ButtonsScreen extends StatefulWidget {
  @override
  _ButtonsScreenState createState() => _ButtonsScreenState();
}

class _ButtonsScreenState extends State<ButtonsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List of Buttons'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20.0),
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: GradientOnlyTextButton(
                    height: 30.0,
                    width: 80.0,
                    child: Text(
                      'WE',
                      style: TextStyle(color: Colors.limeAccent),
                    ),
                    onPressed: () {},
                    startingColor: Colors.blueGrey,
                    endingColor: Colors.grey[800],
                  ),
                ),
                Expanded(
                  child: GradientOnlyTextButton(
                    height: 30.0,
                    width: 80.0,
                    child: Text(
                      'LOVE',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                    startingColor: Colors.redAccent,
                    endingColor: Colors.red[800],
                  ),
                ),
                Expanded(
                  child: GradientOnlyTextButton(
                    height: 30.0,
                    width: 80.0,
                    child: Text(
                      'FLUTTER',
                      style: TextStyle(color: Colors.grey),
                    ),
                    onPressed: () {},
                    startingColor: Colors.yellow,
                    endingColor: Colors.orangeAccent,
                  ),
                ),
              ],
            ),
            RoundOnlyTextButton(
              backgroundColor: Colors.blueGrey,
              buttonText: Text(
                'SIGN UP',
                style: TextStyle(color: Colors.white),
              ),
              textColor: Colors.white,
              onPressed: () => {},
            ),
            RoundOnlyTextButton(
              backgroundColor: Colors.redAccent,
              buttonText: Text(
                'SIGN IN',
                style: TextStyle(color: Colors.white),
              ),
              textColor: Colors.white,
              onPressed: () => {},
            ),
            RoundOnlyTextButton(
              backgroundColor: Colors.blueAccent,
              textColor: Colors.white,
              buttonText: Text(
                'LOG OUT',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () => {},
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: RoundOnlyIconButton(
                    backgroundColor: Colors.green,
                    icon: Icon(Icons.phone),
                    iconAlignment: Alignment.center,
                    onPressed: () => {},
                  ),
                ),
                Expanded(
                  child: RoundOnlyIconButton(
                    backgroundColor: Colors.red,
                    icon: Icon(Icons.phone_missed),
                    iconAlignment: Alignment.center,
                    onPressed: () => {},
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.68,
                  child: RoundIconAndTextButton(
                    backgroundColor: Colors.greenAccent,
                    buttonText: Text(
                      "PLAY",
                      style: TextStyle(color: Colors.white),
                    ),
                    textColor: Colors.greenAccent,
                    icon: Icon(Icons.play_arrow),
                    iconAlignment: Alignment.centerRight,
                    onPressed: () => {},
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.30,
                  child: RoundOnlyTextButton(
                    backgroundColor: Colors.purpleAccent,
                    buttonText: Text(
                      "NO",
                      style: TextStyle(color: Colors.white),
                    ),
                    textColor: Colors.white,
                    onPressed: () => {},
                  ),
                ),
              ],
            ),
            RoundIconAndTextButton(
                backgroundColor: Colors.orangeAccent,
                buttonText: Text(
                  'SEND MAIL',
                  style: TextStyle(color: Colors.white),
                ),
                icon: Icon(
                  Icons.mail,
                ),
                iconColor: Colors.orangeAccent,
                textColor: Colors.white,
                onPressed: () => {}),
            RoundIconAndTextButton(
                backgroundColor: Colors.pinkAccent,
                buttonText: Text(
                  'LISTEN TO MUSIC',
                  style: TextStyle(color: Colors.white),
                ),
                icon: Icon(
                  Icons.play_arrow,
                ),
                iconColor: Colors.pinkAccent,
                textColor: Colors.white,
                onPressed: () => {}),
            GradientOnlyTextButton(
              height: 50.0,
              width: 350.0,
              child: Text(
                'Share',
                style: TextStyle(color: Colors.white),
              ),
              gradient: LinearGradient(
                colors: <Color>[Colors.purple, Colors.red],
              ),
              onPressed: () {},
              startingColor: Colors.red,
              endingColor: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSpace() {
    return SizedBox(
      height: 7.0,
    );
  }
}
