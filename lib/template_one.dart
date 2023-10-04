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


  void createDocState() {}

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          children: [
            const Text(
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                HEADER),
            Row(children: [
              Text(FIOCHILD),
              SizedBox(width: 5),
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
            Row(children: [
              Text(DATEOFBIRTH),
            ]),
            Row(
              children: [
                Text(GROUPSTSPEC),
                SizedBox(
                    width: 400,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.group = selectedValue,
                      items: GROUPOTSPEC,
                    )),
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
                Text(CONTACT),
                SizedBox(
                    width: 400,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.contact = selectedValue,
                      items: CONTACTITEM,
                    )),
              ],
            ),
          ],
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
      dropdownMenuEntries:
          GROUPOTSPEC.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }
}
