import 'package:flutter/material.dart';

import '../resources/const.dart';

class InputFieldWithTitle extends StatelessWidget {
  const InputFieldWithTitle({super.key, required this.title, required this.onTextChanged});

  final String title;
  final Function(String str) onTextChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: DEFAULT_MARGIN_SMALL),
      child: Row(
        children: [
          Text(title, style: const TextStyle(fontSize: FONT_TEXT)),
          const SizedBox(width: DEFAULT_MARGIN),
          Expanded(child: TextField(onChanged: (str) => onTextChanged(str)))
        ],
      ),
    );
  }

}