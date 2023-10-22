import 'package:flutter/material.dart';
import 'main.dart';
import 'template_one/data.dart';


class ContentTemplateTwo extends StatefulWidget implements TemplateInterface{

   ContentTemplateTwo({super.key});
   _ContentTemplateTwo stateTwo = _ContentTemplateTwo();


   @override
  _ContentTemplateTwo createState() => stateTwo;

  @override
  void createDoc() {
      stateTwo.createDocState();
   }
}

  class _ContentTemplateTwo extends State<ContentTemplateTwo>{

    void createDocState(){

    }

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
              Text(FIOMOTHER),
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
      )
  );

      }
  }