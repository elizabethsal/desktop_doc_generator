import 'package:desktop_doc_generator/common/input_field_with_title.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pdf/widgets.dart' as pw;

import '../resources/const.dart';
import '../resources/font_loader.dart';
import '../template_one/data.dart';
import 'abstract_pdf_widget.dart';

class InputFieldWithDate extends StatefulWidget implements AbstractPdfWidget {
  InputFieldWithDate({super.key, required this.title});

  final String title;
  final _InputFieldWithDateState state = _InputFieldWithDateState();

  @override
  _InputFieldWithDateState createState() => state;

  @override
  Future<pw.Widget> getPwWidget() {
    return state.getPwWidget();
  }
}

class _InputFieldWithDateState extends State<InputFieldWithDate>
    implements AbstractPdfWidget {
  final DateTime selectedDate = DateTime.now();
  late InputFieldWithTitle input = InputFieldWithTitle(title: widget.title);
  final double fontSize = FONT_TEXT;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: input),
        const SizedBox(width: DEFAULT_MARGIN),
        Text(DateFormat(BIRTHDATE_FORMAT).format(selectedDate),
            style: TextStyle(fontSize: fontSize))
      ],
    );
  }

  @override
  Future<pw.Widget> getPwWidget() async {
    return pw.Row(children: [
      pw.Expanded(child: await input.getPwWidget()),
      pw.SizedBox(width: DEFAULT_MARGIN),
      pw.Text(DateFormat(BIRTHDATE_FORMAT).format(selectedDate),
          style: pw.TextStyle(font: await getPwFont(), fontSize: fontSize))
    ]);
  }
}
