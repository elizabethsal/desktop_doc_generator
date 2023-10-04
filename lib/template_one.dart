import 'package:flutter/material.dart';
import 'main.dart';
import 'template_one/data.dart';

class ContentTemplateOne extends StatefulWidget implements TemplateInterface {
  ContentTemplateOne({super.key});

  final _ContentTemplateOneState state = _ContentTemplateOneState();

  @override
  _ContentTemplateOneState createState() => state;

  @override
  void createDoc() {
    state.createDocState();
  }
}

class _ContentTemplateOneState extends State<ContentTemplateOne> {
  String name = "";
  String group = "";
  String contact = "";
  String emotions = "";
  String emotionsFon = "";
  String reactionOnPoochr = "";
  String reactionOnPoric = "";
  String selfestimate = "";
  String characterSpec = "";
  String coordination = "";
  String generalMotorica = "";
  String littleMotorica = "";
  String priorityHand = "";
  String mimicMotor = "";


  void createDocState() {}

  @override
  Widget build(BuildContext context) {
    return
      Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  HEADER),
              Row(children: [
                const Text(FIOCHILD),
                const SizedBox(width: 5),
                SizedBox(
                    width: 200,
                    child: TextField(
                      onChanged: (name) {
                        // сохранить фио в локальной переменной (когда надоперересовать лэйаут надо использовать setState())
                        // ;
                        this.name = name;
                      },
                    ))
              ]),
              const Row(children: [
                Text(DATEOFBIRTH),
              ]),
              Row(
                children: [
                  const Text(GROUPSTSPEC),
                  SizedBox(
                      width: 400,
                      child: DropdownMenuItems(
                        onItemSelected: (String selectedValue) =>
                            this.group = selectedValue,
                        items: GROUPOTSPEC,
                      )),
                ],
              ),
              const Row(
                children: [
                  Text(HOMEADDRES),
                  SizedBox(width: 5),
                  SizedBox(width: 200, child: TextField())
                ],
              ),
              const Row(
                children: [
                  Text(PHONENUMBER),
                  SizedBox(width: 5),
                  SizedBox(width: 200, child: TextField())
                ],
              ),
              const Row(
                children: [
                  Text(FAMILY),
                  SizedBox(width: 5),
                  SizedBox(width: 200, child: TextField())
                ],
              ),
              const Row(
                children: [
                  Text(FIOMOTHER),
                  SizedBox(width: 5),
                  SizedBox(width: 200, child: TextField())
                ],
              ),
              const Row(
                children: [
                  //date picker
                  Text(YEAROFBIRTH),
                ],
              ),
              const Row(
                children: [
                  Text(EDUCATION),
                  SizedBox(width: 5),
                  SizedBox(width: 200, child: TextField())
                ],
              ),
              const Row(
                children: [
                  Text(HELP),
                  SizedBox(width: 10),
                  SizedBox(width: 300, child: TextField())
                ],
              ),
              const Row(
                children: [
                  Text(
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                      RESULTSPSIX),
                ],
              ),
              Row(
                children: [
                  const Text(CONTACT),
                  SizedBox(
                      width: 500,
                      child: DropdownMenuItems(
                        onItemSelected: (String selectedValue) =>
                            this.contact = selectedValue,
                        items: CONTACTITEM,
                      )),
                ],
              ),
              Row(
                children: [
                  Text(EMOTIONS),
                  SizedBox(
                    height: 100,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.emotions = selectedValue,
                      items: EMOTIONSiTEM,
                    ),
                  ),
                ],
              ),
              Row(children: [
                Text(EMOTIONALFON),
                SizedBox(
                  height: 100,
                    child: DropdownMenuItems(
                  onItemSelected: (String selectedValue) =>
                      this.emotionsFon = selectedValue,
                  items: EMOTIONALFONITEMS,
                ))
              ]),
              Row(
                children: [
                  Text(REACTIONFORPOOCHRENIEIPORICANIE),
                  Text(REACTIONPOSSHRENIE),
                  SizedBox(
                    height: 100,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                      this.reactionOnPoochr = selectedValue,
                      items: REACTIONPOSSHRENIEITEM,
                    )
                  ),
                  Text(REACTIONPORICATIEN),
                  SizedBox(
                      height: 100,
                      child: DropdownMenuItems(
                        onItemSelected: (String selectedValue) =>
                        this.reactionOnPoric = selectedValue,
                        items: REACTIONPORICATIENITEM,
                      )
                  ),
                ],
              ),
              Row(
                children: [
                  Text(SELFESTIMATE),
                  SizedBox(
                      height: 100,
                      child: DropdownMenuItems(
                        onItemSelected: (String selectedValue) =>
                        this.selfestimate = selectedValue,
                        items: SELFESTIMATEITEM,
                      )
                  ),
                ],
              ),
              Row(
                children: [
                  Text(CHARACTERSPECIFIC),
                  SizedBox(
                      height: 100,
                      child: DropdownMenuItems(
                        onItemSelected: (String selectedValue) =>
                        this.characterSpec = selectedValue,
                        items: CHARACTERSPECIFICITEM,
                      )
                  ),
                ],
              ),
              Row(
                children: [
                  Text(textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                      STATEOFMOTORSPHERE),
                ],
              ),
              Row(
                children: [
                  Text(COORDINATION),
                  SizedBox(
                      height: 100,
                      child: DropdownMenuItems(
                        onItemSelected: (String selectedValue) =>
                        this.coordination = selectedValue,
                        items: COORDINATIONITEM,
                      )
                  ),
                ],
              ),
              Row(
                children: [
                  Text(GENERALMOTORICA),
                  SizedBox(
                      height: 100,
                      child: DropdownMenuItems(
                        onItemSelected: (String selectedValue) =>
                        this.generalMotorica = selectedValue,
                        items: GENERALMOTORICAITEM,
                      )
                  ),
                ],
              ),
              Row(
                children: [
                  Text(LITTLEMOTORICA),
                  SizedBox(
                      height: 100,
                      child: DropdownMenuItems(
                        onItemSelected: (String selectedValue) =>
                        this.littleMotorica = selectedValue,
                        items: GENERALMOTORICAITEM,
                      )
                  ),
                ],
              ),
              Row(
                children: [
                  Text(PRIORITYHAND),
                  SizedBox(
                      height: 100,
                      child: DropdownMenuItems(
                        onItemSelected: (String selectedValue) =>
                        this.priorityHand = selectedValue,
                        items: PRIORITYHANDITEM,
                      )
                  ),
                ],
              ),
              Row(
                children: [
                  Text(MIMICALMOTORICA),
                  SizedBox(
                      height: 100,
                      child: DropdownMenuItems(
                        onItemSelected: (String selectedValue) =>
                        this.mimicMotor = selectedValue,
                        items: MIMICALMOTORICAITEM,
                      )
                  ),
                ],
              ),

            ],
          ),
        ));
  }
}

class DropdownMenuItems extends StatelessWidget {
  final Function(String selectedValue) onItemSelected;
  final List<String> items;

  const DropdownMenuItems(
      {super.key, required this.onItemSelected, required this.items});

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      width: 100,
      initialSelection: items.first,
      onSelected: (String? value) {
        if (value != null) {
          onItemSelected(value);
        }
        //  onItemSelected(value ?? ""); //value == 0, то в itemSelected будет пустая строка
      },
      dropdownMenuEntries: items.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }
}
