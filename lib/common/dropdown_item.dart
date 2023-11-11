import 'package:desktop_doc_generator/common/abstract_pdf_widget.dart';
import 'package:desktop_doc_generator/common/extensions.dart';
import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pw;

import '../resources/colors.dart';
import '../resources/const.dart';
import '../resources/font_loader.dart';
import 'document_variant_chooser_dialog.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DropdownItem<T> extends StatefulWidget implements AbstractPdfWidget {
  final List<T> items;
  final T preselectedItem;
  final String title;

  DropdownItem({
    super.key,
    required this.items,
    required this.preselectedItem,
    required this.title,
  });

  final _DropdownItem<T> state = _DropdownItem();

  @override
  _DropdownItem<T> createState() => state;

  @override
  Future<pw.Widget> getPwWidget() {
    return state.getPwWidget();
  }

  String convertedToString() {
    return state.convertedToString();
  }
}

class _DropdownItem<T> extends State<DropdownItem<T>>
    implements AbstractPdfWidget {
  final double fontSize = FONT_TEXT;
  List<String> selectedItems = [];

  String convertedToString() {
    return selectedItems.join("; ");
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
                child: Text(
                        selectedItems.isEmpty
                            ? AppLocalizations.of(context)!
                                .document_multiple_choose_item_dialog_label
                            : convertedToString(),
                        style: const TextStyle(
                            fontSize: FONT_TEXT, color: TEXT_HYPERLINK_COLOR))
                    .setOnClickListener(() {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return DocumentVariantChooserDialog(
                          preselectedItems: selectedItems,
                          onSubmit: (elements) {
                            setState(() {
                              selectedItems = elements;
                            });
                          },
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
    return pw.Text("${widget.title}${widget.convertedToString()}",
        textAlign: pw.TextAlign.left,
        style: pw.TextStyle(font: await getPwFont(), fontSize: fontSize),
        softWrap: true);
  }
}
