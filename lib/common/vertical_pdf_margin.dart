import 'package:desktop_doc_generator/common/abstract_pdf_widget.dart';
import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pw;

class VerticalPdfMargin extends StatelessWidget implements AbstractPdfWidget{
  const VerticalPdfMargin({super.key, required this.margin});
  final double margin;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: margin);
  }

  @override
  Future<pw.Widget> getPwWidget() async {
    return pw.SizedBox(height: margin);
  }
}
