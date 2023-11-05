import 'package:desktop_doc_generator/common/abstract_pdf_widget.dart';
import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pw;

import '../resources/const.dart';

class InputFieldWithTitle extends StatefulWidget implements AbstractPdfWidget {
  InputFieldWithTitle(
      {super.key, required this.title, required this.onTextChanged});

  final String title;
  final Function(String str) onTextChanged;
  final _InputFieldWithTitle state = _InputFieldWithTitle();

  @override
  State<StatefulWidget> createState() => state;

  @override
  pw.Widget getPwWidget() {
    return state.getPwWidget();
  }
}

class _InputFieldWithTitle extends State<InputFieldWithTitle>
    implements AbstractPdfWidget {
  String finalResult = "";
  final double fontSize = FONT_HEADER;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: DEFAULT_MARGIN_SMALER),
        child: Row(
          children: [
            Container(
                constraints:
                    BoxConstraints(maxWidth: constraints.maxWidth / 2.0),
                child: Text(widget.title,
                    softWrap: true, style: TextStyle(fontSize: fontSize))),
            Expanded(
                child: TextField(
                    style: TextStyle(fontSize: fontSize),
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: fontSize),
                    ),
                    onChanged: (str) => finalResult = str)),
            const SizedBox(width: DEFAULT_MARGIN),
          ],
        ),
      );
    });
  }

  @override
  pw.Widget getPwWidget() {
    return pw.Text("${widget.title}$finalResult",
        style: pw.TextStyle(fontSize: fontSize), softWrap: true);
  }
}
