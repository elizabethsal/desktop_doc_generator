import 'package:desktop_doc_generator/common/abstract_pdf_widget.dart';
import 'package:flutter/material.dart';

import '../resources/const.dart';
import 'package:pdf/widgets.dart' as pw;

class DropdownItem<T> extends StatefulWidget implements AbstractPdfWidget {
  final List<T> items;
  final T preselectedItem;
  final String title;
  final String Function(T item) getTitle;

  DropdownItem(
      {super.key,
      required this.items,
      required this.preselectedItem,
      required this.title,
      required this.getTitle});

  final _DropdownItem<T> state = _DropdownItem();

  @override
  _DropdownItem<T> createState() => state;

  @override
  pw.Widget getPwWidget() {
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
                child: DropdownButton(
                  itemHeight: null,
                  isExpanded: true,
                  value: selectedItem,
                  items: widget.items
                      .map((value) => DropdownMenuItem(
                          value: value,
                          child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: DEFAULT_MARGIN_SMALL),
                              child: Text(widget.getTitle(value),
                                  softWrap: true,
                                  style: TextStyle(fontSize: fontSize)))))
                      .toList(),
                  onChanged: (item) {
                    if (item != null) {
                      setState(() {
                        selectedItem = item;
                      });
                    }
                  },
                ),
              ),
              const SizedBox(width: DEFAULT_MARGIN),
            ]));
      },
    );
  }

  @override
  pw.Widget getPwWidget() {
    return pw.Text("${widget.title}${widget.getTitle(selectedItem)}",
        style: pw.TextStyle(fontSize: fontSize), softWrap: true);
  }
}
