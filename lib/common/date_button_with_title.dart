import 'package:desktop_doc_generator/common/abstract_pdf_widget.dart';
import 'package:desktop_doc_generator/common/extensions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pdf/widgets.dart' as pw;

import '../resources/colors.dart';
import '../resources/const.dart';
import '../template_one/data.dart';

class DateButtonWithTitle extends StatefulWidget implements AbstractPdfWidget {
  DateButtonWithTitle(
      {super.key,
      required this.title,
      required this.minAge});

  final String title;
  final int minAge;
  final _DateButtonWithTitleState state = _DateButtonWithTitleState();

  @override
  _DateButtonWithTitleState createState() => state;

  @override
  pw.Widget getPwWidget() {
    return state.getPwWidget();
  }
}

class _DateButtonWithTitleState extends State<DateButtonWithTitle>
    implements AbstractPdfWidget {
  DateTime? chosenDateTime;
  TextStyle styleText = const TextStyle(fontSize: FONT_TEXT);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: DEFAULT_MARGIN),
        child: Row(
          children: [
            Container(
                constraints:
                    BoxConstraints(maxWidth: constraints.maxWidth / 2.0),
                child: Text(widget.title, softWrap: true, style: styleText)),
            Expanded(
              child: Text(
                      chosenDateTime == null
                          ? CHOOSE_DATE
                          : DateFormat(BIRTHDATE_FORMAT)
                              .format(chosenDateTime!),
                      style: const TextStyle(
                          fontSize: FONT_TEXT, color: TEXT_HYPERLINK_COLOR))
                  .setOnClickListener(() {
                selectTime(
                    context: context,
                    onTimeSelected: (dateTime) {
                      setState(() {
                        chosenDateTime = dateTime;
                      });
                    },
                    minAgeYears: widget.minAge);
              }),
            ),
            const SizedBox(width: DEFAULT_MARGIN),
          ],
        ),
      );
    });
  }

  @override
  pw.Widget getPwWidget() {
    return pw.Text(
        "${widget.title}${chosenDateTime == null ? "" : DateFormat(BIRTHDATE_FORMAT).format(chosenDateTime!)}",
        softWrap: true);
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
