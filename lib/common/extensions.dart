import 'package:flutter/material.dart';

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
