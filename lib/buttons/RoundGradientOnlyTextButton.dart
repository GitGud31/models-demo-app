import 'package:flutter/material.dart';

class GradientOnlyTextButton extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final double width;
  final double height;
  final Function onPressed;
  final Color startingColor;
  final Color endingColor;

  const GradientOnlyTextButton({
    Key key,
    @required this.child,
    this.gradient,
    this.width = 100.0,
    this.height = 50.0,
    this.onPressed,
    this.startingColor,
    this.endingColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: RaisedButton(
        onPressed: this.onPressed,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        color: Colors.transparent,
        padding: EdgeInsets.all(0.0),
        elevation: 0,
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [this.startingColor, this.endingColor],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(30.0)),
          child: Container(
            constraints:
                BoxConstraints(maxWidth: this.width, minHeight: this.height),
            alignment: Alignment.center,
            child: this.child,
          ),
        ),
      ),
    );
  }
}
