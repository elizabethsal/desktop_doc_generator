import 'package:flutter/material.dart';

import '../resources/const.dart';

class InputFieldWithTitle extends StatelessWidget {
  const InputFieldWithTitle(
      {super.key, required this.title, required this.onTextChanged});

  final String title;
  final Function(String str) onTextChanged;

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
                child: Text(title,
                    softWrap: true,
                    style: const TextStyle(fontSize: FONT_TEXT))),
            Expanded(
                child: TextField(
                    style: const TextStyle(fontSize: FONT_TEXT),
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(fontSize: FONT_TEXT),
                    ),
                    onChanged: (str) => onTextChanged(str))),
            const SizedBox(width: DEFAULT_MARGIN),
          ],
        ),
      );
    });
  }
}
