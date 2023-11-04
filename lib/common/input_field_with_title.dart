import 'package:flutter/material.dart';

import '../resources/const.dart';

class InputFieldWithTitle extends StatelessWidget {
  const InputFieldWithTitle({super.key, required this.title, required this.onTextChanged});

  final String title;
  final Function(String str) onTextChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text(title, style: const TextStyle(fontSize: FONT_TEXT)),
          Expanded(child: TextField(
            style: const TextStyle(fontSize: FONT_TEXT),
              decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: FONT_TEXT),
              ),
              onChanged: (str) => onTextChanged(str))),
          const SizedBox(width: DEFAULT_MARGIN),
        ],
      ),
    );
  }

}