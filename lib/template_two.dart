import 'dart:io';

import 'package:desktop_doc_generator/common/pdf_converter_interface.dart';
import 'package:flutter/material.dart';

import 'template_one/data.dart';

class ContentTemplateTwo extends StatefulWidget
    implements PdfConverterInterface {
  ContentTemplateTwo({super.key});

  final _ContentTemplateTwo state= _ContentTemplateTwo();

  @override
  _ContentTemplateTwo createState() => state;

  @override
  Future<File> getPdf() {
    return state.getPdf();
  }
}

class _ContentTemplateTwo extends State<ContentTemplateTwo>
    implements PdfConverterInterface {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: const Column(
          children: [
            Text(
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                HEADER),
            Row(children: [
              Text(FIOCHILD),
              SizedBox(width: 5),
              SizedBox(width: 200, child: TextField())
            ]),
            Row(children: [
              Text(DATEOFBIRTH),
            ]),
            Row(
              children: [
                Text(GROUP_ST_SPEC),
              ],
            ),
            Row(
              children: [
                Text("Ujhjjhbjb"),
                SizedBox(width: 5),
                SizedBox(width: 200, child: TextField())
              ],
            ),
            Row(
              children: [
                Text(PHONENUMBER),
                SizedBox(width: 5),
                SizedBox(width: 200, child: TextField())
              ],
            ),
            Row(
              children: [
                Text(FAMILY),
                SizedBox(width: 5),
                SizedBox(width: 200, child: TextField())
              ],
            ),
            Row(
              children: [
                Text(MOTHERS_NAME),
                SizedBox(width: 5),
                SizedBox(width: 200, child: TextField())
              ],
            ),
            Row(
              children: [
                //date picker
                Text(YEAROFBIRTH),
              ],
            ),
            Row(
              children: [
                Text(EDUCATION),
                SizedBox(width: 5),
                SizedBox(width: 200, child: TextField())
              ],
            ),
            Row(
              children: [
                Text(HELP),
                SizedBox(width: 10),
                SizedBox(width: 300, child: TextField())
              ],
            )
          ],
        ));
  }

  @override
  Future<File> getPdf() {
    // TODO: implement getPdf
    throw UnimplementedError();
  }
}
