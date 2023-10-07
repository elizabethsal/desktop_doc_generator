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
  String homeaddress = "";
  String contactphone = "";
  String family = "";
  String fioMother = "";
  String fioFather = "";
  String education = "";
  String helpEarlier = "";

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

  String impressivespech = "";
  String ekspressivespech = "";
  String vocab = "";
  String slogstructure = "";
  String grammarstroy = "";
  String svyasnayaspeech = "";
  String voicespeech = "";
  String artikul = "";
  String artikulmotor = "";
  String voiceandbreathe = "";
  String phonematic = "";
  String characteractiontoys = "";
  String interesttoys = "";
  String adekvatnost = "";
  String usingpredm = "";
  String selfcatering = "";
  String navyki = "";
  String predpochaction = "";
  String generalosv = "";
  String elementsmath = "";
  String reading = "";
  String isob = "";
  String zaved = "";
  String vospit = "";
  String pedagog = "";
  String teachdefect = "";

  void createDocState() async {
    final templateOne = File("lib/template.docx");
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

  late TextEditingController _textEditingControllerOne;
  late TextEditingController _textEditingControllerTwo;
  late TextEditingController _textEditingControllerThree;
  late TextEditingController _textEditingControllerFour;
  late TextEditingController _textEditingControllerFive;
  late TextEditingController _textEditingControllerSix;
  late TextEditingController _textEditingControllerSeven;
  late TextEditingController _textEditingControllerEight;
  late TextEditingController _textEditingControllerNine;
  late TextEditingController _textEditingControllerTen;
  late TextEditingController _textEditingControllerEleven;
  late TextEditingController _textEditingControllerTwelve;
  late TextEditingController _textEditingControllerThirteen;
  late TextEditingController _textEditingControllerFourteen;
  late TextEditingController _textEditingControllerFifteen;
  late TextEditingController _textEditingControllerSixsteen;
  late TextEditingController _textEditingControllerSeventeen;
  late TextEditingController _textEditingControllerEighteen;
  late TextEditingController _textEditingControllerNineteen;
  late TextEditingController _textEditingControllerTwenty;
  late TextEditingController _textEditingControllerTwentyOne;
  late TextEditingController _textEditingControllerTwentyTwo;
  late TextEditingController _textEditingControllerTwentyThree;
  late TextEditingController _textEditingControllerTwentyFour;
  late TextEditingController _textEditingControllerTwentyFive;
  late TextEditingController _textEditingControllerTwentySix;
  late TextEditingController _textEditingControllerTwentySeven;
  late TextEditingController _textEditingControllerTwentyEight;
  late TextEditingController _textEditingControllerTwentyNine;
  late TextEditingController _textEditingControllerThirty;
  late TextEditingController _textEditingControllerThirtyOne;
  late TextEditingController _textEditingControllerThirtyTwo;
  late TextEditingController _textEditingControllerThirtyThree;

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
                  child: AutoSizeTextField(
                    onChanged: (name) {
                      // сохранить фио в локальной переменной (когда надоперересовать лэйаут надо использовать setState())
                      // ;
                      this.name = name;
                    },
                    controller: _textEditingControllerOne,
                    maxLines: 2,
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
            Row(
              children: [
                Text(HOMEADDRES),
                SizedBox(width: 5),
                SizedBox(
                    width: 500,
                    child: AutoSizeTextField(
                      onChanged: (homeaddress) {
                        // сохранить фио в локальной переменной (когда надоперересовать лэйаут надо использовать setState())
                        // ;
                        this.homeaddress = homeaddress;
                      },
                      controller: _textEditingControllerTwo,
                      maxLines: 2,
                    ))
              ],
            ),
            Row(
              children: [
                Text(PHONENUMBER),
                SizedBox(width: 5),
                SizedBox(
                    width: 200,
                    child: AutoSizeTextField(
                      onChanged: (contactphone) {
                        // сохранить фио в локальной переменной (когда надоперересовать лэйаут надо использовать setState())
                        // ;
                        this.contactphone = contactphone;
                      },
                      controller: _textEditingControllerThree,
                      maxLines: 2,
                    ))
              ],
            ),
            Row(
              children: [
                Text(FAMILY),
                SizedBox(width: 5),
                SizedBox(
                    width: 200,
                    child: AutoSizeTextField(
                      onChanged: (family) {
                        // сохранить фио в локальной переменной (когда надоперересовать лэйаут надо использовать setState())
                        // ;
                        this.family = family;
                      },
                      controller: _textEditingControllerFour,
                      maxLines: 2,
                    ))
              ],
            ),
            Row(
              children: [
                Text(FIOMOTHER),
                SizedBox(width: 5),
                SizedBox(
                    width: 200,
                    child: AutoSizeTextField(
                      onChanged: (fioMother) {
                        // сохранить фио в локальной переменной (когда надоперересовать лэйаут надо использовать setState())
                        // ;
                        this.fioMother = fioMother;
                      },
                      controller: _textEditingControllerFive,
                      maxLines: 2,
                    ))
              ],
            ),
            const Row(
              children: [
                //date picker
                Text(YEAROFBIRTH),
              ],
            ),
            Row(
              children: [
                Text(FIOFATHER),
                SizedBox(width: 5),
                SizedBox(
                    width: 200,
                    child: AutoSizeTextField(
                      onChanged: (fioFather) {
                        // сохранить фио в локальной переменной (когда надоперересовать лэйаут надо использовать setState())
                        // ;
                        this.fioFather = fioFather;
                      },
                      controller: _textEditingControllerSix,
                      maxLines: 2,
                    ))
              ],
            ),
            const Row(
              children: [
                //date picker
                Text(YEAROFBIRTH),
              ],
            ),
            Row(
              children: [
                Text(EDUCATION),
                SizedBox(width: 5),
                SizedBox(
                    width: 200,
                    child: AutoSizeTextField(
                      onChanged: (education) {
                        // сохранить фио в локальной переменной (когда надоперересовать лэйаут надо использовать setState())
                        // ;
                        this.education = education;
                      },
                      controller: _textEditingControllerSeven,
                      maxLines: 2,
                    ))
              ],
            ),
            Row(
              children: [
                Text(HELP),
                SizedBox(width: 10),
                SizedBox(
                    width: 300,
                    child: AutoSizeTextField(
                      onChanged: (helpusing) {
                        // сохранить фио в локальной переменной (когда надоперересовать лэйаут надо использовать setState())
                        // ;
                        this.helpusing = helpusing;
                      },
                      controller: _textEditingControllerEight,
                      maxLines: 2,
                    ))
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
                const Text(EMOTIONS),
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
              const Text(EMOTIONALFON),
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
                const Text(REACTIONFORPOOCHRENIEIPORICANIE),
                const Text(REACTIONPOSSHRENIE),
                SizedBox(
                    height: 100,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.reactionOnPoochr = selectedValue,
                      items: REACTIONPOSSHRENIEITEM,
                    )),
                const Text(REACTIONPORICATIEN),
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
                const Text(SELFESTIMATE),
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
                const Text(CHARACTERSPECIFIC),
                SizedBox(
                    height: 100,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.characterSpec = selectedValue,
                      items: CHARACTERSPECIFICITEM,
                    )),
              ],
            ),
            const Row(
              children: [
                Text(
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                    STATEOFMOTORSPHERE),
              ],
            ),
            Row(
              children: [
                const Text(COORDINATION),
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
                const Text(GENERALMOTORICA),
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
                const Text(LITTLEMOTORICA),
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
                const Text(PRIORITYHAND),
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
                const Text(MIMICALMOTORICA),
                SizedBox(
                    height: 100,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.mimicMotor = selectedValue,
                      items: MIMICALMOTORICAITEM,
                    )),
              ],
            ),
            const Row(
              children: [
                Text(
                    textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.bold),
                    DEVELOPOMENTDELAYS),
              ],
            ),
            Row(
              children: [
                const Text(ATTENTION),
                const Text(PROIZVOL),
                SizedBox(
                    height: 100,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.proizvol = selectedValue,
                      items: RANDOMNESSITEMSATTENTION,
                    )),
                const Text(USTOICH),
                SizedBox(
                    height: 100,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.ustoich = selectedValue,
                      items: STABILITYITEMSATTENTION,
                    )),
                const Text(VOLUME),
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
                const Text(RECOGNITION),
                SizedBox(
                    height: 100,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.vospr = selectedValue,
                      items: RECOGNITIONITEM,
                    )),
                const Text(TACTIL),
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
                const Text(SPACEPREDSTAVLENIE),
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
                const Text(TIMEPREDSTAVLENIE),
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
                const Text(CONSTRUCTIVEPRACSIS),
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
                const Text(MEMORY),
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
                const Text(IMAGINATION),
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
                const Text(THINKING),
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
                const Text(MODESOFACTION),
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
                const Text(PREDOMINANTFORMOFTHINKING),
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
                const Text(OPERATIONSTORONA),
                const Text(ANALISANDSINTES),
                SizedBox(
                    height: 100,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.analyssyntes = selectedValue,
                      items: ANALISANDSINTESITEM,
                    )),
                const Text(GENERALIZATION),
                SizedBox(
                    height: 100,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.obobshenie = selectedValue,
                      items: GENERALIZATIONITEM,
                    )),
                const Text(PERENOS),
                SizedBox(
                    height: 100,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.perenos = selectedValue,
                      items: PERENOSITEM,
                    )),
                const Text(SRAVNENIE),
                SizedBox(
                    height: 100,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.sravnenie = selectedValue,
                      items: SRAVNENIEITEM,
                    )),
                const Text(UPORIADOCHIVANIE),
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
                const Text(RESULTATIVNOST),
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
                const Text(DOZIROVANAYAHELP),
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
                const Text(CHARACTERDEYATELNOSTI),
                SizedBox(
                    height: 100,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.characteraction = selectedValue,
                      items: CHARACTERDEYATELNOSTIITEM,
                    )),
                const Text(MOTIVATION),
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
                const Text(TEMPACTIVITYRABOTOSPOSOBNOST),
                const Text(TEMP),
                SizedBox(
                    height: 100,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.temp = selectedValue,
                      items: TEMPITEM,
                    )),
                const Text(RABOTOSPOSOBNOST),
                SizedBox(
                    height: 100,
                    child: DropdownMenuItems(
                      onItemSelected: (String selectedValue) =>
                          this.rabotosposp = selectedValue,
                      items: RABOTOSPOSOBNOSTITEM,
                    )),
              ],
            ),
            const Row(
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
                SizedBox(
                    width: 200,
                    child: AutoSizeTextField(
                      onChanged: (impressivespeech) {
                        // сохранить фио в локальной переменной (когда надоперересовать лэйаут надо использовать setState())
                        // ;
                        this.impressivespech = impressivespech;
                      },
                      controller: _textEditingControllerNine,
                      maxLines: 2,
                    ))
              ],
            ),
            Row(
              children: [
                Text(EKSPRESSIONSPEECH),
                SizedBox(width: 5),
                SizedBox(
                    width: 200,
                    child: AutoSizeTextField(
                      onChanged: (ekspressivespech) {
                        // сохранить фио в локальной переменной (когда надоперересовать лэйаут надо использовать setState())
                        // ;
                        this.ekspressivespech = ekspressivespech;
                      },
                      controller: _textEditingControllerTen,
                      maxLines: 2,
                    ))
              ],
            ),
            Row(
              children: [
                Text(DICTIONARY),
                SizedBox(width: 5),
                SizedBox(
                    width: 200,
                    child: AutoSizeTextField(
                      onChanged: (vocab) {
                        // сохранить фио в локальной переменной (когда надоперересовать лэйаут надо использовать setState())
                        // ;
                        this.vocab = vocab;
                      },
                      controller: _textEditingControllerEleven,
                      maxLines: 2,
                    ))
              ],
            ),
            Row(
              children: [
                Text(SLOGSTRUCTURE),
                SizedBox(width: 5),
                SizedBox(
                    width: 200,
                    child: AutoSizeTextField(
                      onChanged: (slogstructure) {
                        // сохранить фио в локальной переменной (когда надоперересовать лэйаут надо использовать setState())
                        // ;
                        this.slogstructure = slogstructure;
                      },
                      controller: _textEditingControllerEight,
                      maxLines: 2,
                    ))
              ],
            ),
            Row(
              children: [
                Text(GRAMMATICALSTROY),
                SizedBox(width: 5),
                SizedBox(
                    width: 200,
                    child: AutoSizeTextField(
                      onChanged: (grammarstroy) {
                        // сохранить фио в локальной переменной (когда надоперересовать лэйаут надо использовать setState())
                        // ;
                        this.grammarstroy = grammarstroy;
                      },
                      controller: _textEditingControllerTwelve,
                      maxLines: 2,
                    ))
              ],
            ),
            Row(
              children: [
                Text(SVYASNAYASPEECH),
                SizedBox(width: 5),
                SizedBox(
                    width: 200,
                    child: AutoSizeTextField(
                      onChanged: (svyasnayaspeech) {
                        // сохранить фио в локальной переменной (когда надоперересовать лэйаут надо использовать setState())
                        // ;
                        this.svyasnayaspeech = svyasnayaspeech;
                      },
                      controller: _textEditingControllerThirteen,
                      maxLines: 2,
                    ))
              ],
            ),
            Row(
              children: [
                Text(SOUNDPROIZNOSHENIE),
                SizedBox(width: 5),
                SizedBox(
                    width: 200,
                    child: AutoSizeTextField(
                      onChanged: (voicespeech) {
                        // сохранить фио в локальной переменной (когда надоперересовать лэйаут надо использовать setState())
                        // ;
                        this.voicespeech = voicespeech;
                      },
                      controller: _textEditingControllerFourteen,
                      maxLines: 2,
                    ))
              ],
            ),
            Row(
              children: [
                Text(ARTICULATION),
                SizedBox(width: 5),
                SizedBox(
                    width: 200,
                    child: AutoSizeTextField(
                      onChanged: (artikul) {
                        // сохранить фио в локальной переменной (когда надоперересовать лэйаут надо использовать setState())
                        // ;
                        this.artikul = artikul;
                      },
                      controller: _textEditingControllerFifteen,
                      maxLines: 2,
                    ))
              ],
            ),
            Row(
              children: [
                Text(ARTICULATIONMOTORICA),
                SizedBox(width: 5),
                SizedBox(
                    width: 200,
                    child: AutoSizeTextField(
                      onChanged: (artikulmotor) {
                        // сохранить фио в локальной переменной (когда надоперересовать лэйаут надо использовать setState())
                        // ;
                        this.artikulmotor = artikulmotor;
                      },
                      controller: _textEditingControllerSixsteen,
                      maxLines: 2,
                    ))
              ],
            ),
            Row(
              children: [
                Text(GOLOSOOBRAZOVANIE),
                SizedBox(width: 5),
                SizedBox(
                    width: 200,
                    child: AutoSizeTextField(
                      onChanged: (voiceandbreathe) {
                        // сохранить фио в локальной переменной (когда надоперересовать лэйаут надо использовать setState())
                        // ;
                        this.voiceandbreathe = voiceandbreathe;
                      },
                      controller: _textEditingControllerSeventeen,
                      maxLines: 2,
                    ))
              ],
            ),
            Row(
              children: [
                Text(FONEMATICSOUND),
                SizedBox(width: 5),
                SizedBox(
                    width: 200,
                    child: AutoSizeTextField(
                      onChanged: (phonematic) {
                        // сохранить фио в локальной переменной (когда надоперересовать лэйаут надо использовать setState())
                        // ;
                        this.phonematic = phonematic;
                      },
                      controller: _textEditingControllerEighteen,
                      maxLines: 2,
                    ))
              ],
            ),
            const Row(
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
                SizedBox(
                    width: 200,
                    child: AutoSizeTextField(
                      onChanged: (characteractiontoys) {
                        // сохранить фио в локальной переменной (когда надоперересовать лэйаут надо использовать setState())
                        // ;
                        this.characteractiontoys = characteractiontoys;
                      },
                      controller: _textEditingControllerNineteen,
                      maxLines: 2,
                    ))
              ],
            ),
            Row(
              children: [
                Text(PROYAVLENIEINTERESA),
                SizedBox(width: 5),
                SizedBox(
                    width: 200,
                    child: AutoSizeTextField(
                      onChanged: (interesttoys) {
                        this.interesttoys = interesttoys;
                      },
                      controller: _textEditingControllerTwenty,
                      maxLines: 2,
                    ))
              ],
            ),
            Row(
              children: [
                Text(ADEKVATNOSTTOYS),
                SizedBox(width: 5),
                SizedBox(
                    width: 200,
                    child: AutoSizeTextField(
                      onChanged: (adekvatnost) {
                        this.adekvatnost = adekvatnost;
                      },
                      controller: _textEditingControllerTwentyOne,
                      maxLines: 2,
                    ))
              ],
            ),
            Row(
              children: [
                Text(USINGPRESMETOV),
                SizedBox(width: 5),
                SizedBox(
                    width: 200,
                    child: AutoSizeTextField(
                      onChanged: (usingpredm) {
                        this.usingpredm = usingpredm;
                      },
                      controller: _textEditingControllerTwentyTwo,
                      maxLines: 2,
                    ))
              ],
            ),
            const Row(
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
                SizedBox(
                    width: 200,
                    child: AutoSizeTextField(
                      onChanged: (selfcatering) {
                        this.selfcatering = selfcatering;
                      },
                      controller: _textEditingControllerTwentyThree,
                      maxLines: 2,
                    ))
              ],
            ),
            Row(
              children: [
                Text(COMMUNICATIONALSKILLS),
                SizedBox(width: 5),
                SizedBox(
                    width: 200,
                    child: AutoSizeTextField(
                      onChanged: (navyki) {
                        this.navyki = navyki;
                      },
                      controller: _textEditingControllerTwentyFour,
                      maxLines: 2,
                    ))
              ],
            ),
            Row(
              children: [
                Text(PREDPOCHITAEMIEACTIVITY),
                SizedBox(width: 5),
                SizedBox(
                    width: 200,
                    child: AutoSizeTextField(
                      onChanged: (predpochaction) {
                        this.predpochaction = predpochaction;
                      },
                      controller: _textEditingControllerTwentyFive,
                      maxLines: 2,
                    ))
              ],
            ),
            const Row(
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
                SizedBox(
                    width: 200,
                    child: AutoSizeTextField(
                      onChanged: (generalosv) {
                        this.generalosv = generalosv;
                      },
                      controller: _textEditingControllerTwentySix,
                      maxLines: 2,
                    ))
              ],
            ),
            Row(
              children: [
                Text(ELEMENTSOFMATH),
                SizedBox(width: 5),
                SizedBox(
                    width: 200,
                    child: AutoSizeTextField(
                      onChanged: (elementmath) {
                        this.elementsmath = elementsmath;
                      },
                      controller: _textEditingControllerTwentySeven,
                      maxLines: 2,
                    ))
              ],
            ),
            Row(
              children: [
                Text(ZNANIEBUKV),
                SizedBox(width: 5),
                SizedBox(
                    width: 200,
                    child: AutoSizeTextField(
                      onChanged: (reading) {
                        this.reading = reading;
                      },
                      controller: _textEditingControllerTwentyEight,
                      maxLines: 2,
                    ))
              ],
            ),
            Row(
              children: [
                Text(IZOBRAZITELNAYAACTIVITY),
                SizedBox(width: 5),
                SizedBox(
                    width: 200,
                    child: AutoSizeTextField(
                      onChanged: (isob) {
                        this.isob = isob;
                      },
                      controller: _textEditingControllerTwentyNine,
                      maxLines: 2,
                    ))
              ],
            ),
            Column(
              children: [
                Text(ZAVEDYUSHI),
                SizedBox(width: 5),
                SizedBox(
                    width: 200,
                    child: AutoSizeTextField(
                      onChanged: (zaved) {
                        this.zaved = zaved;
                      },
                      controller: _textEditingControllerThirty,
                      maxLines: 2,
                    )),
                Text(VOSPITATEL),
                SizedBox(width: 5),
                SizedBox(
                    width: 200,
                    child: AutoSizeTextField(
                      onChanged: (vospit) {
                        this.vospit = vospit;
                      },
                      controller: _textEditingControllerThirtyOne,
                      maxLines: 2,
                    )),
                Text(PEDAGOGPSIX),
                SizedBox(width: 5),
                SizedBox(
                    width: 200,
                    child: AutoSizeTextField(
                      onChanged: (pedagog) {
                        this.pedagog = pedagog;
                      },
                      controller: _textEditingControllerThirtyTwo,
                      maxLines: 2,
                    )),
                Text(TEZHERDEFECT),
                SizedBox(width: 5),
                SizedBox(
                    width: 200,
                    child: AutoSizeTextField(
                      onChanged: (teachdefect) {
                        this.teachdefect = teachdefect;
                      },
                      controller: _textEditingControllerThirtyThree,
                      maxLines: 2,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }

  void initState() {
    super.initState();
    _textEditingControllerOne = TextEditingController();
    _textEditingControllerTwo = TextEditingController();
    _textEditingControllerThree = TextEditingController();
    _textEditingControllerFour = TextEditingController();
    _textEditingControllerFive = TextEditingController();
    _textEditingControllerFive = TextEditingController();
    _textEditingControllerSix = TextEditingController();
    _textEditingControllerSeven = TextEditingController();
    _textEditingControllerEight = TextEditingController();
    _textEditingControllerNine = TextEditingController();
    _textEditingControllerTen = TextEditingController();
    _textEditingControllerEleven = TextEditingController();
    _textEditingControllerTwelve = TextEditingController();
    _textEditingControllerThirteen = TextEditingController();
    _textEditingControllerFourteen = TextEditingController();
    _textEditingControllerFifteen = TextEditingController();
    _textEditingControllerSixsteen = TextEditingController();
    _textEditingControllerSeventeen = TextEditingController();
    _textEditingControllerEighteen = TextEditingController();
    _textEditingControllerNineteen = TextEditingController();
    _textEditingControllerTwenty = TextEditingController();
    _textEditingControllerTwentyOne = TextEditingController();
    _textEditingControllerTwentyTwo = TextEditingController();
    _textEditingControllerTwentyThree = TextEditingController();
    _textEditingControllerTwentyFour = TextEditingController();
    _textEditingControllerTwentyFive = TextEditingController();
    _textEditingControllerTwentySix = TextEditingController();
    _textEditingControllerTwentySeven = TextEditingController();
    _textEditingControllerTwentyEight = TextEditingController();
    _textEditingControllerTwentyNine = TextEditingController();
    _textEditingControllerThirty = TextEditingController();
    _textEditingControllerThirtyOne = TextEditingController();
    _textEditingControllerThirtyTwo = TextEditingController();
    _textEditingControllerThirtyThree = TextEditingController();
  }

  @override
  void dispose() {
    _textEditingControllerOne?.dispose();
    _textEditingControllerTwo?.dispose();
    _textEditingControllerThree?.dispose();
    _textEditingControllerFour?.dispose();
    _textEditingControllerFive?.dispose();
    _textEditingControllerSix?.dispose();
    _textEditingControllerSeven?.dispose();
    _textEditingControllerNine?.dispose();
    _textEditingControllerTen?.dispose();
    _textEditingControllerEleven?.dispose();
    _textEditingControllerTwelve?.dispose();
    _textEditingControllerThirteen?.dispose();
    _textEditingControllerFourteen.dispose();
    _textEditingControllerFifteen.dispose();
    _textEditingControllerSixsteen.dispose();
    _textEditingControllerSeventeen.dispose();
    _textEditingControllerEighteen.dispose();
    _textEditingControllerNineteen.dispose();
    _textEditingControllerTwenty.dispose();
    _textEditingControllerTwentyOne.dispose();
    _textEditingControllerTwentyTwo.dispose();
    _textEditingControllerTwentyThree.dispose();
    _textEditingControllerTwentyFour.dispose();
    _textEditingControllerTwentyFive.dispose();
    _textEditingControllerTwentySix.dispose();
    _textEditingControllerTwentySeven.dispose();
    _textEditingControllerTwentyEight.dispose();
    _textEditingControllerTwentyNine.dispose();
    _textEditingControllerThirty.dispose();
    _textEditingControllerThirtyOne.dispose();
    _textEditingControllerThirtyTwo.dispose();
    _textEditingControllerThirtyThree.dispose();

    super.dispose();
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

/*class DatePicker extends StatelessWidget {
  DateTime day;
  DateTime month;
  DateTime year;

  const DatePicker({
    super.key, required this.day, required this.month, required this.year
  });

  @override
  Widget build(BuildContext context) {
    return Date
  }


}*/
