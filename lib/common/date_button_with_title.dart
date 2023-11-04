import 'package:desktop_doc_generator/common/extensions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../resources/colors.dart';
import '../resources/const.dart';
import '../template_one/data.dart';

class DateButtonWithTitle extends StatefulWidget {
  const DateButtonWithTitle(
      {super.key, required this.title, required this.chosenDate, required this.minAge});

  final String title;
  final Function(DateTime dateTime) chosenDate;
  final int minAge;

  @override
  _DateButtonWithTitleState createState() => _DateButtonWithTitleState();
}

class _DateButtonWithTitleState extends State<DateButtonWithTitle> {
  DateTime? chosenDateTime;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: DEFAULT_MARGIN_SMALL),
      child: Row(
        children: [
          Text(widget.title, style: const TextStyle(fontSize: FONT_TEXT)),
          const SizedBox(width: DEFAULT_MARGIN),
          Text(
                  chosenDateTime == null
                      ? CHOOSE_DATE
                      : DateFormat(BIRTHDATE_FORMAT).format(chosenDateTime!),
                  style: const TextStyle(
                      fontSize: FONT_TEXT, color: TEXT_HYPERLINK_COLOR))
              .setOnClickListener(() {
            selectTime(
                context: context,
                onTimeSelected: (dateTime) {
                  setState(() {
                    chosenDateTime = dateTime;
                  });
                  widget.chosenDate(dateTime);
                },
                minAgeYears: widget.minAge);
          }),
        ],
      ),
    );
  }
}

void selectTime(
    {required BuildContext context,
    required Function(DateTime selectedTime) onTimeSelected,
    required int minAgeYears}) {
  DateTime currentDate = DateTime.now();
  DateTime endDate = DateTime(currentDate.year - minAgeYears);
  showDatePicker(
    context: context,
    initialDate: endDate,
    firstDate: DateTime(1945),
    lastDate: endDate,
  ).then((value) {
    if (value != null) {
      onTimeSelected(value);
    }
  });
}
