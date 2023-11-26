import 'package:desktop_doc_generator/common/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../resources/const.dart';

class DocumentVariantChooserDialog extends StatefulWidget {
  final List<String> items;
  final Function(List<String> selected, String? manualInput) onSubmit;
  final List<String> preselectedItems;
  final String? manualInput;
  final bool withManualInput;

  const DocumentVariantChooserDialog(
      {super.key,
      required this.items,
      required this.onSubmit,
      required this.preselectedItems,
      this.manualInput,
      this.withManualInput = true});

  @override
  _DocumentVariantChooserDialogState createState() =>
      _DocumentVariantChooserDialogState();
}

class _DocumentVariantChooserDialogState
    extends State<DocumentVariantChooserDialog> {
  late List<String> selectedItems = widget.preselectedItems;
  late List<String?> allItems = [];
  final TextEditingController manualController = TextEditingController();

  @override
  void initState() {
    super.initState();
    allItems.addAll(widget.items);
    if (widget.manualInput != null || widget.withManualInput) {
      //adding null element to use it as placeholder in itemBuilder and show TextField
      allItems.add(null);
    }
    if (widget.manualInput != null) {
      //prefill TextField with text, if there is any filled previously
      manualController.text = widget.manualInput!;
    }
  }

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
                    padding: const EdgeInsets.only(bottom: DEFAULT_MARGIN),
                    shrinkWrap: true,
                    itemCount: allItems.length,
                    itemBuilder: (context, index) {
                      String? item = allItems[index];
                      if (item == null) {
                        //if item in allItems == null, then return TextField
                        return TextField(
                          controller: manualController,
                          style: const TextStyle(fontSize: FONT_TEXT),
                          decoration: InputDecoration(
                              hintStyle: const TextStyle(fontSize: FONT_TEXT),
                              hintText: AppLocalizations.of(context)!
                                  .input_variant_hint),
                        );
                      } else {
                        // else - return default checkbox list element
                        return ListElement(
                          item: item,
                          isChecked:
                              selectedItems.contains(widget.items[index]),
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
                      }
                    }),
              ),
              const SizedBox(height: DEFAULT_MARGIN),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        //getting input text from manualController of TextField and passing in lambda's second param
                        widget.onSubmit(selectedItems, manualController.text);
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
          const SizedBox(width: DEFAULT_MARGIN_SMALL),
          Flexible(
            child: Text(
              item, style: const TextStyle(fontSize: FONT_TEXT), softWrap: true,
              textAlign: TextAlign.start,
              //no need to use overflow logic if we need softWrap
              //overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    ).setOnClickListener(() {
      onItemSelected(item);
    });
  }
}
