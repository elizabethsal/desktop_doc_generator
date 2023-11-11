import 'package:desktop_doc_generator/common/abstract_pdf_widget.dart';
import 'package:desktop_doc_generator/common/dialog.dart';
import 'package:desktop_doc_generator/common/extensions.dart';
import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pw;

import '../resources/colors.dart';
import '../resources/const.dart';
import '../resources/font_loader.dart';

class DropdownItem<T> extends StatefulWidget implements AbstractPdfWidget {
  final List<T> items;
  final T preselectedItem;
  final String title;
  final String Function(T item) convertToString;

  DropdownItem(
      {super.key,
      required this.items,
      required this.preselectedItem,
      required this.title,
      required this.convertToString});

  final _DropdownItem<T> state = _DropdownItem();

  @override
  _DropdownItem<T> createState() => state;

  @override
  Future<pw.Widget> getPwWidget() {
    return state.getPwWidget();
  }
}

class _DropdownItem<T> extends State<DropdownItem<T>>
    implements AbstractPdfWidget {
  late T selectedItem;
  String finalResult = "";
  final double fontSize = FONT_TEXT;

  @override
  void initState() {
    super.initState();
    selectedItem = widget.items.first;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Padding(
            padding: const EdgeInsets.symmetric(vertical: DEFAULT_MARGIN_SMALL),
            child: Row(children: [
              Container(
                  constraints:
                      BoxConstraints(maxWidth: constraints.maxWidth / 2.0),
                  child: Text(
                    widget.title,
                    softWrap: true,
                    style: TextStyle(fontSize: fontSize),
                  )),
              Expanded(

                child: const Text(
                    "CHOOSE VARIANTS",
                    style: TextStyle(
                        fontSize: FONT_TEXT, color: TEXT_HYPERLINK_COLOR))
                    .setOnClickListener(() {
                  showDialog(context: context, builder: (BuildContext context){
                    return DocumentVariantChooserDialog(
                      items: widget.items.cast(),
                    );
                  });
                }),
              )
            ]));
      },
    );
  }

  @override
  Future<pw.Widget> getPwWidget() async {
    return pw.Text("${widget.title}${widget.convertToString(selectedItem)}",
        textAlign: pw.TextAlign.left,
        style: pw.TextStyle(font: await getPwFont(), fontSize: fontSize),
        softWrap: true);
  }
}
