import 'package:flutter/material.dart';

class RangeSliderWidget extends StatefulWidget {
  RangeSliderWidget(
      {this.onRangeChange,
      required this.startValue,
      required this.endValue,
      super.key});
  Function(int, int)? onRangeChange;
  int startValue;
  int endValue;

  @override
  _RangeSliderWidgetState createState() => _RangeSliderWidgetState();
}

class _RangeSliderWidgetState extends State<RangeSliderWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(left: 24),
          child: Text("Select price range",
              textAlign: TextAlign.start,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
        ),
        const SizedBox(
          height: 20,
        ),
        Center(
            child: Text(
                'selected range: ${widget.startValue} - ${widget.endValue}')),
        RangeSlider(
          values: RangeValues(
              widget.startValue.toDouble(), widget.endValue.toDouble()),
          min: 0,
          max: 1000,
          divisions: 1000,
          onChanged: (RangeValues values) {
            setState(() {
              widget.startValue = values.start.toInt();
              widget.endValue = values.end.toInt();
              widget.onRangeChange?.call(widget.startValue, widget.endValue);
            });
          },
        ),
      ],
    );
  }
}
