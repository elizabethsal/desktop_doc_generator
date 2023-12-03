import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pw;

import '../resources/const.dart';
import '../resources/font_loader.dart';
import 'abstract_pdf_widget.dart';

class InputHeader extends StatefulWidget implements AbstractPdfWidget {
  InputHeader({super.key, required this.controller, required this.hint});

  final TextEditingController controller;
  final String hint;
  final _InputHeaderState state = _InputHeaderState();

  @override
  State<InputHeader> createState() => state;

  @override
  Future<pw.Widget> getPwWidget() {
    return state.getPwWidget();
  }
}

class _InputHeaderState extends State<InputHeader>
    implements AbstractPdfWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextField(
        keyboardType: TextInputType.multiline,
        maxLines: null,
        controller: widget.controller,
        style:
            const TextStyle(fontWeight: FontWeight.bold, fontSize: FONT_TEXT),
        decoration: InputDecoration(
            hintText: widget.hint,
            hintStyle: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: FONT_TEXT)),
        textAlign: TextAlign.center,
      ),
    );
  }

  @override
  Future<pw.Widget> getPwWidget() async {
    return pw.Center(
        child: pw.Text(
      style: pw.TextStyle(fontSize: FONT_TEXT, font: await getPwFontBold()),
      textAlign: pw.TextAlign.center,
      widget.controller.text,
    ));
  }
}
