import 'package:flutter/material.dart';

import '../resources/const.dart';

class DropdownItem<T> extends StatefulWidget {
  final List<T> items;
  final T preselectedItem;
  final String title;
  final Function(T chosenItem) onItemChose;
  final String Function(T item) getTitle;

  const DropdownItem(
      {super.key,
      required this.items,
      required this.preselectedItem,
      required this.onItemChose,
      required this.title,
      required this.getTitle});

  @override
  _DropdownItem<T> createState() => _DropdownItem<T>();
}

class _DropdownItem<T> extends State<DropdownItem<T>> {
  late T selectedItem;

  @override
  void initState() {
    super.initState();
    selectedItem = widget.items.first;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: DEFAULT_MARGIN_SMALL),
        child: Row(children: [
          Text(widget.title, style: const TextStyle(fontSize: FONT_TEXT)),
          DropdownButton(
            value: selectedItem,
            items: widget.items
                .map((value) => DropdownMenuItem(
                value: value,
                child: Text(widget.getTitle(value),
                    style: const TextStyle(fontSize: FONT_TEXT))))
                .toList(),
            onChanged: (item) {
              if (item != null) {
                setState(() {
                  selectedItem = item;
                });
                widget.onItemChose(item);
              }
            },
          ),
          const SizedBox(width: DEFAULT_MARGIN),
        ]));
  }
}
