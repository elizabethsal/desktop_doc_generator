import 'package:flutter/material.dart';
import 'template_one/data.dart';

class TemplateOne extends StatelessWidget{

//class TemplateOne extends StatelessWidget {
  const TemplateOne({super.key})

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Template 1")
      ),
      body: Row(
        children: [
          Material(
            color: Colors.transparent,
            child:  InkWell(
              onTap: (){},
              splashColor: Colors.deepPurple[500],
              highlightColor: Colors.deepPurple[300],
            ),
          ),

          Expanded(
            child: Container(
              /*    decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1.0),
              ),

           */
              color: Colors.deepPurple[50],
              child: const Column(
                children: [
                  Text(
                    "Template 1",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  )
                ],
              ),
            ),
          ),
          Expanded(
              flex: 2,
              child: Container(
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
                        /*SizedBox(width: 5),
                        SizedBox(
                          width: 200,
                          child: TextField(),
                        )*/
                      ]),
                      Row(
                        children: [
                          Text(GROUPSTSPEC),
                          /*        DropdownButton(items: items.map((String item){
                          return DropdownMenuItem(
                              value: item,
                              child: Text(item)
                          );
                        },
                            onChanged: onChanged)

                 */
                        ],
                      ),
                      Row(
                        children: [
                          Text(HOMEADDRES),
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
                  ))),
        ],
      ),
    );
  }
}
