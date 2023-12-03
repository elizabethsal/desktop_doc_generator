import 'package:desktop_doc_generator/common/abstract_pdf_widget.dart';
import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pw;

import '../resources/const.dart';
import '../resources/font_loader.dart';

class Header extends StatelessWidget implements AbstractPdfWidget {
  final String header;

  const Header({super.key, required this.header});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: FONT_TEXT),
        textAlign: TextAlign.center,
        header,
      ),
    );
  }

  @override
  Future<pw.Widget> getPwWidget() async {
    return pw.Center(
        child: pw.Text(
      style: pw.TextStyle(fontSize: FONT_TEXT, font: await getPwFontBold()),
      textAlign: pw.TextAlign.center,
      header,
    ));
  }
}
