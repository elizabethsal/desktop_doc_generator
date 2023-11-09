import 'package:flutter/material.dart';

import '../resources/const.dart';

extension ClickableWidget on Widget {
  Widget setOnClickListener(GestureTapCallback onClick, {decoration}) {
    return Material(
      color: Colors.transparent,
      child: Ink(
          decoration: decoration,
          child: InkWell(
            onTap: onClick,
            child: this,
          )),
    );
  }
}

extension RoundedRectangleWidget on Widget {
  Widget wrapInRadiusRectangle(Color color, BorderRadius radius,
      {Color strokeColor = Colors.transparent, double strokeWidth = 0.0}) {
    return Container(
      decoration: BoxDecoration(
        //color: strokeColor,
        border: Border.all(width: strokeWidth, color: strokeColor),
        borderRadius: radius,
      ),
      child: ClipRRect(
          borderRadius: radius,
          clipBehavior: Clip.hardEdge,
          child: Material(color: color, child: this)),
    );
  }

  Widget wrapInRoundedRectangle(Color color,
      {Color strokeColor = Colors.transparent,
        double strokeWidth = 0.0,
        double radius = DEFAULT_RADIUS}) {
    return Container(
      decoration: BoxDecoration(
        //color: strokeColor,
        border: Border.all(width: strokeWidth, color: strokeColor),
        borderRadius: BorderRadius.circular(radius),
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          clipBehavior: Clip.hardEdge,
          child: Material(color: color, child: this)),
    );
  }
}
