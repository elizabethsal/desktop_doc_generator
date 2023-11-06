import 'package:flutter/services.dart';
import 'package:pdf/widgets.dart' as pw;

pw.Font? _font;
pw.Font? _fontBold;

Future<pw.Font> getPwFont() async {
  _font ??= pw.Font.ttf(await rootBundle.load("fonts/NotoSerif-Regular.ttf"));
  return _font!;
}

Future<pw.Font> getPwFontBold() async {
  _fontBold ??= pw.Font.ttf(await rootBundle.load("fonts/NotoSerif-Bold.ttf"));
  return _fontBold!;
}