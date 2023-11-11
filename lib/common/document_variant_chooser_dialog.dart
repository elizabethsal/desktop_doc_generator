import 'package:desktop_doc_generator/common/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../resources/const.dart';

class DocumentVariantChooserDialog extends StatefulWidget {
  final List<String> items;
  final Function(List<String> selected) onSubmit;
  final List<String> preselectedItems;

  const DocumentVariantChooserDialog(
      {super.key,
      required this.items,
      required this.onSubmit,
      required this.preselectedItems});

  @override
  _DocumentVariantChooserDialogState createState() =>
      _DocumentVariantChooserDialogState();
}

class _DocumentVariantChooserDialogState
    extends State<DocumentVariantChooserDialog> {
  late List<String> selectedItems = widget.preselectedItems;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(DEFAULT_MARGIN),
        child: ConstrainedBox(
          constraints:
              BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!
                    .document_multiple_choose_item_dialog_label,
                style: const TextStyle(fontSize: FONT_HEADER),
              ),
              const SizedBox(height: DEFAULT_MARGIN),
              Flexible(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: widget.items.length,
                    itemBuilder: (context, index) {
                      return ListElement(
                        item: widget.items[index],
                        isChecked: selectedItems.contains(widget.items[index]),
                        onItemSelected: (item) {
                          setState(() {
                            if (selectedItems.contains(item)) {
                              selectedItems.remove(item);
                            } else {
                              selectedItems.add(item);
                            }
                          });
                        },
                      );
                    }),
              ),
              const SizedBox(height: DEFAULT_MARGIN),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        widget.onSubmit(selectedItems);
                        Navigator.of(context).pop();
                      },
                      child: Text(AppLocalizations.of(context)!
                          .document_multiple_choose_item_dialog_submit_button)),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(AppLocalizations.of(context)!
                        .document_multiple_choose_item_dialog_cancel_button),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ListElement extends StatelessWidget {
  final String item;
  final bool isChecked;
  final Function(String item) onItemSelected;

  const ListElement(
      {super.key,
      required this.item,
      required this.isChecked,
      required this.onItemSelected});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: LIST_ELEMENT_HEIGHT,
      child: Row(
        children: [
          Icon(isChecked ? Icons.check_box : Icons.check_box_outline_blank),
          SizedBox(width: DEFAULT_MARGIN_SMALL),
          Text(item, style: const TextStyle(fontSize: FONT_TEXT)),
        ],
      ),
    ).setOnClickListener(() {
      onItemSelected(item);
    });
  }
}
