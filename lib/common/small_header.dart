import 'package:desktop_doc_generator/common/abstract_pdf_widget.dart';
import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pw;

import '../resources/const.dart';
import '../resources/font_loader.dart';

class SmallHeader extends StatelessWidget implements AbstractPdfWidget {
  const SmallHeader({super.key, required this.smallHeader});

  final String smallHeader;
  final fontSize = FONT_TEXT;

  @override
  Widget build(BuildContext context) {
    return Text(smallHeader,
        style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold));
  }

  @override
  Future<pw.Widget> getPwWidget() async {
    return pw.Text(smallHeader,
        style: pw.TextStyle(
            fontSize: fontSize,
            font: await getPwFontBold()));
  }
}
