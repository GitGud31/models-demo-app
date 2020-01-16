import 'package:flutter/material.dart';

class SimpleFiveStarRating extends StatefulWidget {
  final int initialRatingValue;
  final void Function(int) rated;
  final double size;
  final Color color;

  SimpleFiveStarRating({
    this.initialRatingValue,
    this.color = Colors.purpleAccent,
    this.size = 16.0,
    this.rated,
  });

  @override
  _SimpleFiveStarRatingState createState() => _SimpleFiveStarRatingState();
}

class _SimpleFiveStarRatingState extends State<SimpleFiveStarRating> {
  bool _isDragging = false;
  int _ratingValue = 0;
  GlobalKey _starOneKey = GlobalKey();
  GlobalKey _starTwoKey = GlobalKey();
  GlobalKey _starThreeKey = GlobalKey();
  GlobalKey _starFourKey = GlobalKey();
  GlobalKey _starFiveKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragStart: (DragStartDetails details) {
        _isDragging = true;
      },
      onHorizontalDragUpdate: (DragUpdateDetails details) {
        RenderBox star1 = _starOneKey.currentContext.findRenderObject();
        final positionStar1 = star1.localToGlobal(Offset.zero);
        final sizeStar1 = star1.size;

        RenderBox star2 = _starTwoKey.currentContext.findRenderObject();
        final positionStar2 = star2.localToGlobal(Offset.zero);
        final sizeStar2 = star2.size;

        RenderBox star3 = _starThreeKey.currentContext.findRenderObject();
        final positionStar3 = star3.localToGlobal(Offset.zero);
        final sizeStar3 = star3.size;

        RenderBox star4 = _starFourKey.currentContext.findRenderObject();
        final positionStar4 = star4.localToGlobal(Offset.zero);
        final sizeStar4 = star4.size;

        RenderBox star5 = _starFiveKey.currentContext.findRenderObject();
        final positionStar5 = star5.localToGlobal(Offset.zero);
        final sizeStar5 = star5.size;

        if (details.globalPosition.dx < positionStar1.dx) {
          _updateRating(0);
        } else if (details.globalPosition.dx > positionStar1.dx &&
            details.globalPosition.dx < (positionStar1.dx + sizeStar1.width)) {
          _updateRating(1);
        } else if (details.globalPosition.dx > positionStar2.dx &&
            details.globalPosition.dx < (positionStar2.dx + sizeStar2.width)) {
          _updateRating(2);
        } else if (details.localPosition.dx > positionStar3.dx &&
            details.globalPosition.dx < (positionStar3.dx + sizeStar3.width)) {
          _updateRating(3);
        } else if (details.globalPosition.dx > positionStar4.dx &&
            details.globalPosition.dx < (positionStar4.dx + sizeStar4.width)) {
          _updateRating(4);
        } else if (details.globalPosition.dx > positionStar5.dx &&
            details.globalPosition.dx < (positionStar5.dx + sizeStar5.width)) {
          _updateRating(5);
        } else if (details.globalPosition.dx >
            (positionStar5.dx + sizeStar1.width)) {
          _updateRating(5);
        }
      },
      onHorizontalDragEnd: (DragEndDetails details) {
        _isDragging = false;
      },
      child: Row(
        children: <Widget>[
          GestureDetector(
            key: _starOneKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3.0),
              child: Icon(
                _ratingValue >= 1 ? Icons.star : Icons.star_border,
                color: widget.color,
                size: widget.size,
              ),
            ),
            onTap: () => _updateRating(_ratingValue),
          ),
          GestureDetector(
            key: _starTwoKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3.0),
              child: Icon(
                _ratingValue >= 2 ? Icons.star : Icons.star_border,
                color: widget.color,
                size: widget.size,
              ),
            ),
            onTap: () => _updateRating(_ratingValue),
          ),
          GestureDetector(
            key: _starThreeKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3.0),
              child: Icon(
                _ratingValue >= 3 ? Icons.star : Icons.star_border,
                color: widget.color,
                size: widget.size,
              ),
            ),
            onTap: () => _updateRating(_ratingValue),
          ),
          GestureDetector(
            key: _starFourKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3.0),
              child: Icon(
                _ratingValue >= 4 ? Icons.star : Icons.star_border,
                color: widget.color,
                size: widget.size,
              ),
            ),
            onTap: () => _updateRating(_ratingValue),
          ),
          GestureDetector(
            key: _starFiveKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3.0),
              child: Icon(
                _ratingValue >= 5 ? Icons.star : Icons.star_border,
                color: widget.color,
                size: widget.size,
              ),
            ),
            onTap: () => _updateRating(_ratingValue),
          ),
        ],
      ),
    );
  }

  _updateRating(int newRateValue) {
    if (_ratingValue == 1 && newRateValue == 1 && !_isDragging) {
      setState(() {
        _ratingValue = 0;
        widget.rated(0);
      });
    } else {
      setState(() {
        _ratingValue = newRateValue;
        widget.rated(newRateValue);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _ratingValue = widget.initialRatingValue;
  }
}
