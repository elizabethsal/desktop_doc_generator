import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdf/widgets.dart' as pw;

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

Future<pw.Font> getPwFont() async {
  return pw.Font.ttf(await rootBundle.load("assets/NotoSerif-Regular.ttf"));
}
