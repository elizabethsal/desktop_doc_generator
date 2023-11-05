import 'package:desktop_doc_generator/common/abstract_pdf_widget.dart';
import 'package:desktop_doc_generator/common/extensions.dart';
import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pw;

import '../resources/const.dart';

class Header extends StatelessWidget implements AbstractPdfWidget {
  final String header;
  final double fontSize = FONT_HEADER;

  const Header({super.key, required this.header});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize),
        textAlign: TextAlign.center,
        header,
      ),
    );
  }

  @override
  Future<pw.Widget> getPwWidget() async {
    return pw.Text(
      style: pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: fontSize, font: await getPwFont()),
      textAlign: pw.TextAlign.center,
      header,
    );
  }
}
