import 'dart:io';

import 'package:flutter/material.dart';
import 'main.dart';
import 'template_one/data.dart';
import 'package:docx_template/docx_template.dart';
import 'package:auto_size_text_field/auto_size_text_field.dart';


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
  String attention = "";
  String proizvol = "";
  String ustoich = "";
  String volume = "";
  String vospr = "";
  String tact = "";
  String spacepred = "";
  String timepred = "";
  String pracsis = "";
  String memory = "";
  String imagination = "";
  String mushlenie = "";
  String sposobyaction = "";
  String preoblform = "";
  String operationsys = "";
  String analyssyntes = "";
  String obobshenie = "";
  String perenos = "";
  String sravnenie = "";
  String uporiad = "";
  String resultcorrect = "";
  String helpusing = "";
  String characteraction = "";
  String motivation = "";
  String tempactivity = "";
  String temp = "";
  String rabotosposp = "";

  void createDocState() async {
    final templateOne = File("template.docx");
    final docx = await DocxTemplate.fromBytes(await templateOne.readAsBytes());

   /* final contentList = <Content>[];
    final c = PlainContent("value");
    contentList.add(c);
*/
    Content content = Content();
    content
      ..add(TextContent("title_doc", HEADER))
      ..add(TextContent("fio_child", FIOCHILD))
      ..add(TextContent("fio_child_text", name))
      ..add(TextContent("date_of_birth", DATEOFBIRTH))
      ..add(TextContent("date", "дата"))
      ..add(TextContent("text_name", "ГУО «Ясли-сад №555 г. Бреста»"))
      ..add(TextContent("text_of_group", GROUPSTSPEC))
      ..add(TextContent("variabel_of_group", group))
      ..add(TextContent("home_addres", HOMEADDRES))
      ..add(TextContent("exact_home_address", "address"))
      ..add(TextContent("contact_number", PHONENUMBER))
      ..add(TextContent("phone_number", "text"))
      ..add(TextContent("family", FAMILY))
      ..add(TextContent("inf_about_family", "married"))
      ..add(TextContent("conditions_of_growing", "good"))
      ..add(TextContent("fio_mother", FIOMOTHER))
      ..add(TextContent("fio_mother_text", "Sem sem"))
      ..add(TextContent("date_of_birth_parent", "22001"))
      ..add(TextContent("mother_date_of_birth", YEAROFBIRTH))
      ..add(TextContent("education", EDUCATION))
      ..add(TextContent("exact_education", "high"))
      ..add(TextContent("help_which_favour", HELP))
      ..add(TextContent("help_inform", "dcvujnk"));

    final docGenerated = await docx.generate(content);
    final fileGenerated = File('generated.docx');
    if (docGenerated != null) await fileGenerated.writeAsBytes(docGenerated);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    height: 100,
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
                    height: 100,
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
                    )),
                Text(REACTIONPORICATIEN),
                SizedBox(
                    height: 100,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.reactionOnPoric = selectedValue,
                      items: REACTIONPORICATIENITEM,
                    )),
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
                    )),
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
                    )),
              ],
            ),
            Row(
              children: [
                Text(
                    textAlign: TextAlign.center,
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
                    )),
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
                    )),
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
                    )),
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
                    )),
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
                    )),
              ],
            ),
            Row(
              children: [
                Text(
                    textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.bold),
                    DEVELOPOMENTDELAYS),
              ],
            ),
            Row(
              children: [
                Text(ATTENTION),
                Text(PROIZVOL),
                SizedBox(
                    height: 100,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.proizvol = selectedValue,
                      items: RANDOMNESSITEMSATTENTION,
                    )),
                Text(USTOICH),
                SizedBox(
                    height: 100,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.ustoich = selectedValue,
                      items: STABILITYITEMSATTENTION,
                    )),
                Text(VOLUME),
                SizedBox(
                    height: 100,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.volume = selectedValue,
                      items: VOLUMEITEMSATTENTION,
                    )),
              ],
            ),
            Row(
              children: [
                Text(RECOGNITION),
                SizedBox(
                    height: 100,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.vospr = selectedValue,
                      items: RECOGNITIONITEM,
                    )),
                Text(TACTIL),
                SizedBox(
                    height: 100,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.tact = selectedValue,
                      items: RECOGNITIONTACTICALITEM,
                    )),
              ],
            ),
            Row(
              children: [
                Text(SPACEPREDSTAVLENIE),
                SizedBox(
                    height: 100,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.spacepred = selectedValue,
                      items: SPACEPREDSTAVLENIEITEM,
                    )),
              ],
            ),
            Row(
              children: [
                Text(TIMEPREDSTAVLENIE),
                SizedBox(
                    height: 100,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.timepred = selectedValue,
                      items: TIMEPREDSTAVLENIEITEM,
                    )),
              ],
            ),
            Row(
              children: [
                Text(CONSTRUCTIVEPRACSIS),
                SizedBox(
                    height: 100,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.pracsis = selectedValue,
                      items: CONSTRUCTIVEPRACSISITEM,
                    )),
              ],
            ),
            Row(
              children: [
                Text(MEMORY),
                SizedBox(
                    height: 100,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.memory = selectedValue,
                      items: MEMORYITEM,
                    )),
              ],
            ),
            Row(
              children: [
                Text(IMAGINATION),
                SizedBox(
                    height: 100,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.imagination = selectedValue,
                      items: IMAGINATIONITEM,
                    )),
              ],
            ),
            Row(
              children: [
                Text(THINKING),
                SizedBox(
                    height: 100,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.mushlenie = selectedValue,
                      items: THINKINGITEM,
                    )),
              ],
            ),
            Row(
              children: [
                Text(MODESOFACTION),
                SizedBox(
                    height: 100,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.sposobyaction = selectedValue,
                      items: MODESOFACTIONITEM,
                    )),
              ],
            ),
            Row(
              children: [
                Text(PREDOMINANTFORMOFTHINKING),
                SizedBox(
                    height: 100,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.preoblform = selectedValue,
                      items: MODESOFACTIONITEM,
                    )),
              ],
            ),
            Row(
              children: [
                Text(OPERATIONSTORONA),
                Text(ANALISANDSINTES),
                SizedBox(
                    height: 100,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.analyssyntes = selectedValue,
                      items: ANALISANDSINTESITEM,
                    )),
                Text(GENERALIZATION),
                SizedBox(
                    height: 100,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.obobshenie = selectedValue,
                      items: GENERALIZATIONITEM,
                    )),
                Text(PERENOS),
                SizedBox(
                    height: 100,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.perenos = selectedValue,
                      items: PERENOSITEM,
                    )),
                Text(SRAVNENIE),
                SizedBox(
                    height: 100,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.sravnenie = selectedValue,
                      items: SRAVNENIEITEM,
                    )),
                Text(UPORIADOCHIVANIE),
                SizedBox(
                    height: 100,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.uporiad = selectedValue,
                      items: UPORIADOCHIVANIEITEM,
                    )),
              ],
            ),
            Row(
              children: [
                Text(RESULTATIVNOST),
                SizedBox(
                    height: 100,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.resultcorrect = selectedValue,
                      items: RESULTATIVNOSTITEM,
                    )),
              ],
            ),
            Row(
              children: [
                Text(DOZIROVANAYAHELP),
                SizedBox(
                    height: 100,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.helpusing = selectedValue,
                      items: DOZIROVANAYAHELPITEM,
                    )),
              ],
            ),
            Row(
              children: [
                Text(CHARACTERDEYATELNOSTI),
                SizedBox(
                    height: 100,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.characteraction = selectedValue,
                      items: CHARACTERDEYATELNOSTIITEM,
                    )),
                Text(MOTIVATION),
                SizedBox(
                    height: 100,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.motivation = selectedValue,
                      items: MOTIVATIONITEM,
                    )),
              ],
            ),
            Row(
              children: [
                Text(TEMPACTIVITYRABOTOSPOSOBNOST),
                Text(TEMP),
                SizedBox(
                    height: 100,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.temp = selectedValue,
                      items: TEMPITEM,
                    )),
                Text(RABOTOSPOSOBNOST),
                SizedBox(
                    height: 100,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.rabotosposp = selectedValue,
                      items: RABOTOSPOSOBNOSTITEM,
                    )),
              ],
            ),
            Row(
              children: [
                Text(
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    OSOBENNOTIRECHEVOGO),
              ],
            ),
            Row(
              children: [
                Text(IMPRESSIONSPEECH),
                SizedBox(width: 5),
                SizedBox(width: 200, child: TextField())
              ],
            ),
            Row(
              children: [
                Text(EKSPRESSIONSPEECH),
                SizedBox(width: 5),
                SizedBox(width: 200, child: TextField())
              ],
            ),
            Row(
              children: [
                Text(DICTIONARY),
                SizedBox(width: 5),
                SizedBox(width: 200, child: TextField())
              ],
            ),
            Row(
              children: [
                Text(SLOGSTRUCTURE),
                SizedBox(width: 5),
                SizedBox(width: 200, child: TextField())
              ],
            ),
            Row(
              children: [
                Text(GRAMMATICALSTROY),
                SizedBox(width: 5),
                SizedBox(width: 200, child: TextField())
              ],
            ),
            Row(
              children: [
                Text(SVYASNAYASPEECH),
                SizedBox(width: 5),
                SizedBox(width: 200, child: TextField())
              ],
            ),
            Row(
              children: [
                Text(SOUNDPROIZNOSHENIE),
                SizedBox(width: 5),
                SizedBox(width: 200, child: TextField())
              ],
            ),
            Row(
              children: [
                Text(ARTICULATION),
                SizedBox(width: 5),
                SizedBox(width: 200, child: TextField())
              ],
            ),
            Row(
              children: [
                Text(ARTICULATIONMOTORICA),
                SizedBox(width: 5),
                SizedBox(width: 200, child: TextField())
              ],
            ),
            Row(
              children: [
                Text(GOLOSOOBRAZOVANIE),
                SizedBox(width: 5),
                SizedBox(width: 200, child: TextField())
              ],
            ),
            Row(
              children: [
                Text(FONEMATICSOUND),
                SizedBox(width: 5),
                SizedBox(width: 200, child: TextField())
              ],
            ),
            Row(
              children: [
                Text(
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    OSOBENNOSTIRAZVITIEGAMING),
              ],
            ),
            Row(
              children: [
                Text(CHARACTERACTIONWITHTIYS),
                SizedBox(width: 5),
                SizedBox(width: 200, child: TextField())
              ],
            ),
            Row(
              children: [
                Text(PROYAVLENIEINTERESA),
                SizedBox(width: 5),
                SizedBox(width: 200, child: TextField())
              ],
            ),
            Row(
              children: [
                Text(ADEKVATNOSTTOYS),
                SizedBox(width: 5),
                SizedBox(width: 200, child: TextField())
              ],
            ),
            Row(
              children: [
                Text(USINGPRESMETOV),
                SizedBox(width: 5),
                SizedBox(width: 200, child: TextField())
              ],
            ),
            Row(
              children: [
                Text(
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    ADAPTIVEACTION),
              ],
            ),
            Row(
              children: [
                Text(SELFCATERING),
                SizedBox(width: 5),
                SizedBox(width: 200, child: TextField())
              ],
            ),
            Row(
              children: [
                Text(COMMUNICATIONALSKILLS),
                SizedBox(width: 5),
                SizedBox(width: 200, child: TextField())
              ],
            ),
            Row(
              children: [
                Text(PREDPOCHITAEMIEACTIVITY),
                SizedBox(width: 5),
                SizedBox(width: 200, child: TextField())
              ],
            ),
            Row(
              children: [
                Text(
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    LEVELOFSPECIAL),
              ],
            ),
            Row(
              children: [
                Text(GENERALAWARNESS),
                SizedBox(width: 5),
                SizedBox(width: 200, child: TextField())
              ],
            ),
            Row(
              children: [
                Text(ELEMENTSOFMATH),
                SizedBox(width: 5),
                SizedBox(width: 200, child: TextField())
              ],
            ),
            Row(
              children: [
                Text(ZNANIEBUKV),
                SizedBox(width: 5),
                SizedBox(width: 200, child: TextField())
              ],
            ),
            Row(
              children: [
                Text(IZOBRAZITELNAYAACTIVITY),
                SizedBox(width: 5),
                SizedBox(width: 200, child: TextField())
              ],
            ),
            Column(
              children: [
                Text(ZAVEDYUSHI),
                SizedBox(width: 5),
                SizedBox(width: 200, child: TextField()),
                Text(VOSPITATEL),
                SizedBox(width: 5),
                SizedBox(width: 200, child: TextField()),
                Text(PEDAGOGPSIX),
                SizedBox(width: 5),
                SizedBox(width: 200, child: TextField()),
                Text(TEZHERDEFECT),
                SizedBox(width: 5),
                SizedBox(width: 200, child: TextField())
              ],
            )
          ],
        ),
      ),
    );
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
