import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:pdf/widgets.dart' as pw;

import '../common/date_button_with_title.dart';
import '../common/input_field_with_title.dart';
import '../resources/const.dart';
import '../main.dart';
import 'data.dart';

class ContentTemplateOne extends StatefulWidget implements TemplateInterface {
  ContentTemplateOne({super.key});

  final _ContentTemplateOneState state = _ContentTemplateOneState();

  @override
  _ContentTemplateOneState createState() => state;

  @override
  void createDoc() {
    // state.pdfGenerator();
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

  void createDocState() {
    pdfGenerator().then((value) {
      print('Print');
    });
  }

  DateTime _yearOfBirthChild = DateTime.now();
  DateTime _yearOfBirthMother = DateTime.now();
  DateTime _yearOfBirthFather = DateTime.now();

  Future<void> pdfGenerator() async {
    final pdf = pw.Document();

    var font = pw.Font.ttf(await rootBundle.load("assets/NotoSerif-Black.ttf"));

    pdf.addPage(
      pw.Page(
        build: (pw.Context context) => pw.Center(
          child: pw.Text('ПШНХДокс', style: pw.TextStyle(font: font)),
        ),
      ),
    );

    final file = File('assets/example.pdf');
    await file.writeAsBytes(await pdf.save());
  }

  List<TextEditingController> textEditingController = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: FONT_HEADER),
                textAlign: TextAlign.center,
                HEADER,
              ),
            ),
            const SizedBox(height: DEFAULT_MARGIN),
            InputFieldWithTitle(
              title: FIOCHILD,
              onTextChanged: (str) {
                //TODO save child name
              },
            ),
            DateButtonWithTitle(
              minAge: 0,
              title: DATEOFBIRTH,
              chosenDate: (DateTime date) {
                //TODO save date
              },
            ),
            /*SizedBox(
              height: HEIGHT_SIZEBOX_DROPDOWNMENU,
              child: Row(
                children: [
                  const Text(GROUP_ST_SPEC,
                      style: TextStyle(fontSize: FONT_TEXT)),
                  Flexible(
                      child: DropdownMenuItems(
                    onItemSelected: (String selectedValue) =>
                        this.group = selectedValue,
                    items: GROUP_OT_SPEC_ITEMS,
                  )),
                ],
              ),
            ),*/
            InputFieldWithTitle(
              title: HOMEADDRES,
              onTextChanged: (str) {
                //TODO save child address
              },
            ),
            InputFieldWithTitle(
              title: PHONENUMBER,
              onTextChanged: (str) {
                //TODO save child phone number
              },
            ),
            InputFieldWithTitle(
              title: FAMILY,
              onTextChanged: (str) {
                //TODO save child family
              },
            ),
            InputFieldWithTitle(
              title: MOTHERS_NAME,
              onTextChanged: (str) {
                //TODO save mothers name
              },
            ),
            DateButtonWithTitle(
              minAge: MIN_PARRENT_AGE,
              title: YEAROFBIRTH,
              chosenDate: (DateTime date) {
                //TODO save date
              },
            ),
            InputFieldWithTitle(
              title: FATHERS_NAME,
              onTextChanged: (str) {
                //TODO save fathers name
              },
            ),
            DateButtonWithTitle(
              minAge: MIN_PARRENT_AGE,
              title: YEAROFBIRTH,
              chosenDate: (DateTime date) {
                //TODO save date
              },
            ),
            InputFieldWithTitle(
              title: EDUCATION,
              onTextChanged: (str) {
                //TODO save education
              },
            ),
            InputFieldWithTitle(
              title: HELP,
              onTextChanged: (str) {
                //TODO save help
              },
            ),
          ],
        ),
        /*Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Wrap(
                children: [
                  Text(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: FONT_HEADER),
                      RESULTSPSIX),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    children: [
                      const Text(CONTACT,
                          style: TextStyle(fontSize: FONT_TEXT)),
                      SizedBox(
                          height: 100,
                          child: DropdownMenuItems(
                            onItemSelected: (String selectedValue) =>
                            this.contact = selectedValue,
                            items: CONTACTITEM,
                          )),
                    ],
                  ),
                  Wrap(
                    children: [
                      const Text(EMOTIONS,
                          style: TextStyle(fontSize: FONT_TEXT)),
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
                  Wrap(children: [
                    const Text(EMOTIONALFON),
                    SizedBox(
                        height: 100,
                        child: DropdownMenuItems(
                          onItemSelected: (String selectedValue) =>
                          this.emotionsFon = selectedValue,
                          items: EMOTIONALFONITEMS,
                        ))
                  ]),
                  Wrap(
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
                  Wrap(
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
                  Wrap(
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
                ],
              ),
            ],
          ),*/

        /*const Wrap(
            children: [
              Text(
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  STATEOFMOTORSPHERE),
            ],
          ),
          Wrap(
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
          Wrap(
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
          Wrap(
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
          Wrap(
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
          Wrap(
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
          const Wrap(
            children: [
              Text(
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  DEVELOPOMENTDELAYS),
            ],
          ),
          Wrap(
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
          Wrap(
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
          Wrap(
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
          Wrap(
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
          Wrap(
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
          Wrap(
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
          Wrap(
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
          Wrap(
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
          Wrap(
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
          Wrap(
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
          Wrap(
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
          Wrap(
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
          Wrap(
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
          Wrap(
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
          Wrap(
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
          const Wrap(
            children: [
              Text(
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  OSOBENNOTIRECHEVOGO),
            ],
          ),
          Wrap(
            children: [
              const Text(IMPRESSIONSPEECH),
              const SizedBox(width: 5),
              SizedBox(
                  width: 200,
                  child: AutoSizeTextField(
                    onChanged: (impressive_speech) {
                      setState(() {
                        impressivespech = impressive_speech;
                      });
                    },
                    controller: textEditingController[8],
                    maxLines: 2,
                  ))
            ],
          ),
          Wrap(
            children: [
              const Text(EKSPRESSIONSPEECH),
              const SizedBox(width: 5),
              SizedBox(
                  width: 200,
                  child: AutoSizeTextField(
                    onChanged: (ekspressive_speech) {
                      setState(() {
                        ekspressivespech = ekspressive_speech;
                      });
                    },
                    controller: textEditingController[9],
                    maxLines: 2,
                  ))
            ],
          ),
          Wrap(
            children: [
              const Text(DICTIONARY),
              const SizedBox(width: 5),
              SizedBox(
                  width: 200,
                  child: AutoSizeTextField(
                    onChanged: (vocabular) {
                      setState(() {
                        vocab = vocabular;
                      });
                    },
                    controller: textEditingController[10],
                    maxLines: 2,
                  ))
            ],
          ),
          Wrap(
            children: [
              const Text(SLOGSTRUCTURE),
              const SizedBox(width: 5),
              SizedBox(
                  width: 200,
                  child: AutoSizeTextField(
                    onChanged: (slog_structure) {
                      setState(() {
                        slogstructure = slog_structure;
                      });
                    },
                    controller: textEditingController[11],
                    maxLines: 2,
                  ))
            ],
          ),
          Wrap(
            children: [
              const Text(GRAMMATICALSTROY),
              const SizedBox(width: 5),
              SizedBox(
                  width: 200,
                  child: AutoSizeTextField(
                    onChanged: (grammar_stroy) {
                      setState(() {
                        grammarstroy = grammar_stroy;
                      });
                    },
                    controller: textEditingController[12],
                    maxLines: 2,
                  ))
            ],
          ),
          Wrap(
            children: [
              const Text(SVYASNAYASPEECH),
              const SizedBox(width: 5),
              SizedBox(
                  width: 200,
                  child: AutoSizeTextField(
                    onChanged: (svyasnaya_speech) {
                      setState(() {
                        svyasnayaspeech = svyasnaya_speech;
                      });
                    },
                    controller: textEditingController[13],
                    maxLines: 2,
                  ))
            ],
          ),
          Wrap(
            children: [
              const Text(SOUNDPROIZNOSHENIE),
              const SizedBox(width: 5),
              SizedBox(
                  width: 200,
                  child: AutoSizeTextField(
                    onChanged: (voice_speech) {
                      setState(() {
                        voicespeech = voice_speech;
                      });
                    },
                    controller: textEditingController[14],
                    maxLines: 2,
                  ))
            ],
          ),
          Wrap(
            children: [
              const Text(ARTICULATION),
              const SizedBox(width: 5),
              SizedBox(
                  width: 200,
                  child: AutoSizeTextField(
                    onChanged: (artikul_) {
                      setState(() {
                        artikul = artikul_;
                      });
                    },
                    controller: textEditingController[15],
                    maxLines: 2,
                  ))
            ],
          ),
          Wrap(
            children: [
              const Text(ARTICULATIONMOTORICA),
              const SizedBox(width: 5),
              SizedBox(
                  width: 200,
                  child: AutoSizeTextField(
                    onChanged: (artikul_motor) {
                      setState(() {
                        artikulmotor = artikul_motor;
                      });
                    },
                    controller: textEditingController[16],
                    maxLines: 2,
                  ))
            ],
          ),
          Wrap(
            children: [
              const Text(GOLOSOOBRAZOVANIE),
              const SizedBox(width: 5),
              SizedBox(
                  width: 200,
                  child: AutoSizeTextField(
                    onChanged: (voice_and_breathe) {
                      setState(() {
                        voiceandbreathe = voice_and_breathe;
                      });
                    },
                    controller: textEditingController[17],
                    maxLines: 2,
                  ))
            ],
          ),
          Wrap(
            children: [
              const Text(FONEMATICSOUND),
              const SizedBox(width: 5),
              SizedBox(
                  width: 200,
                  child: AutoSizeTextField(
                    onChanged: (phonematic_) {
                      setState(() {
                        phonematic = phonematic_;
                      });
                    },
                    controller: textEditingController[18],
                    maxLines: 2,
                  ))
            ],
          ),
          const Wrap(
            children: [
              Text(
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  OSOBENNOSTIRAZVITIEGAMING),
            ],
          ),
          Wrap(
            children: [
              const Text(CHARACTERACTIONWITHTIYS),
              const SizedBox(width: 5),
              SizedBox(
                  width: 200,
                  child: AutoSizeTextField(
                    onChanged: (character_action_toys) {
                      setState(() {
                        characteractiontoys = character_action_toys;
                      });
                    },
                    controller: textEditingController[19],
                    maxLines: 2,
                  ))
            ],
          ),
          Wrap(
            children: [
              const Text(PROYAVLENIEINTERESA),
              const SizedBox(width: 5),
              SizedBox(
                  width: 200,
                  child: AutoSizeTextField(
                    onChanged: (interesttoys) {
                      this.interesttoys = interesttoys;
                    },
                    controller: textEditingController[20],
                    maxLines: 2,
                  ))
            ],
          ),
          Wrap(
            children: [
              const Text(ADEKVATNOSTTOYS),
              const SizedBox(width: 5),
              SizedBox(
                  width: 200,
                  child: AutoSizeTextField(
                    onChanged: (adekvatnost) {
                      this.adekvatnost = adekvatnost;
                    },
                    controller: textEditingController[21],
                    maxLines: 2,
                  ))
            ],
          ),
          Wrap(
            children: [
              const Text(USINGPRESMETOV),
              const SizedBox(width: 5),
              SizedBox(
                  width: 200,
                  child: AutoSizeTextField(
                    onChanged: (usingpredm) {
                      this.usingpredm = usingpredm;
                    },
                    controller: textEditingController[22],
                    maxLines: 2,
                  ))
            ],
          ),
          const Wrap(
            children: [
              Text(
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  ADAPTIVEACTION),
            ],
          ),
          Wrap(
            children: [
              const Text(SELFCATERING),
              const SizedBox(width: 5),
              SizedBox(
                  width: 200,
                  child: AutoSizeTextField(
                    onChanged: (selfcatering) {
                      this.selfcatering = selfcatering;
                    },
                    controller: textEditingController[23],
                    maxLines: 2,
                  ))
            ],
          ),
          Wrap(
            children: [
              const Text(COMMUNICATIONALSKILLS),
              const SizedBox(width: 5),
              SizedBox(
                  width: 200,
                  child: AutoSizeTextField(
                    onChanged: (navyki) {
                      this.navyki = navyki;
                    },
                    controller: textEditingController[24],
                    maxLines: 2,
                  ))
            ],
          ),
          Wrap(
            children: [
              const Text(PREDPOCHITAEMIEACTIVITY),
              const SizedBox(width: 5),
              SizedBox(
                  width: 200,
                  child: AutoSizeTextField(
                    onChanged: (predpochaction) {
                      this.predpochaction = predpochaction;
                    },
                    controller: textEditingController[25],
                    maxLines: 2,
                  ))
            ],
          ),
          const Wrap(
            children: [
              Text(
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  LEVELOFSPECIAL),
            ],
          ),
          Wrap(
            children: [
              const Text(GENERALAWARNESS),
              const SizedBox(width: 5),
              SizedBox(
                  width: 200,
                  child: AutoSizeTextField(
                    onChanged: (generalosv) {
                      this.generalosv = generalosv;
                    },
                    controller: textEditingController[26],
                    maxLines: 2,
                  ))
            ],
          ),
          Wrap(
            children: [
              const Text(ELEMENTSOFMATH),
              const SizedBox(width: 5),
              SizedBox(
                  width: 200,
                  child: AutoSizeTextField(
                    onChanged: (elementmath) {
                      this.elementsmath = elementsmath;
                    },
                    controller: textEditingController[27],
                    maxLines: 2,
                  ))
            ],
          ),
          Wrap(
            children: [
              const Text(ZNANIEBUKV),
              const SizedBox(width: 5),
              SizedBox(
                  width: 200,
                  child: AutoSizeTextField(
                    onChanged: (reading) {
                      this.reading = reading;
                    },
                    controller: textEditingController[28],
                    maxLines: 2,
                  ))
            ],
          ),
          Wrap(
            children: [
              const Text(IZOBRAZITELNAYAACTIVITY),
              const SizedBox(width: 5),
              SizedBox(
                  width: 200,
                  child: AutoSizeTextField(
                    onChanged: (isob) {
                      this.isob = isob;
                    },
                    controller: textEditingController[29],
                    maxLines: 2,
                  ))
            ],
          ),
          Column(
            children: [
              const Text(ZAVEDYUSHI),
              const SizedBox(width: 5),
              SizedBox(
                  width: 200,
                  child: AutoSizeTextField(
                    onChanged: (zaved) {
                      this.zaved = zaved;
                    },
                    controller: textEditingController[30],
                    maxLines: 2,
                  )),
              const Text(VOSPITATEL),
              const SizedBox(width: 5),
              SizedBox(
                  width: 200,
                  child: AutoSizeTextField(
                    onChanged: (vospit) {
                      this.vospit = vospit;
                    },
                    controller: textEditingController[31],
                    maxLines: 2,
                  )),
              const Text(PEDAGOGPSIX),
              const SizedBox(width: 5),
              SizedBox(
                  width: 200,
                  child: AutoSizeTextField(
                    onChanged: (pedagog) {
                      this.pedagog = pedagog;
                    },
                    controller: textEditingController[32],
                    maxLines: 2,
                  )),
              const Text(TEZHERDEFECT),
              const SizedBox(width: 5),
              SizedBox(
                  width: 200,
                  child: AutoSizeTextField(
                    onChanged: (teachdefect) {
                      this.teachdefect = teachdefect;
                    },
                    controller: textEditingController[33],
                    maxLines: 2,
                  ))
            ],
          )*/
      ),
    );
  }

  void initState() {
    super.initState();
    for (int i = 0; i < 34; i++) {
      textEditingController.add(TextEditingController());
    }
  }

  @override
  void dispose() {
    for (var controller in textEditingController) {
      controller.dispose();
    }
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
