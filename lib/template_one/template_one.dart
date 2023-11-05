import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdf/widgets.dart' as pw;

import '../common/date_button_with_title.dart';
import '../common/dropdown_item.dart';
import '../common/header.dart';
import '../common/input_field_with_title.dart';
import '../main.dart';
import '../resources/const.dart';
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
            const Header(header: HEADER),
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
            DropdownItem<String>(
              title: GROUP_ST_SPEC,
              items: GROUP_OT_SPEC_ITEMS,
              preselectedItem: GROUP_OT_SPEC_ITEMS.first,
              onItemChose: (item) {
                //TODO save
              },
              getTitle: (item) => item,
            ),
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
            const SizedBox(height: DEFAULT_MARGIN_BIG),
            const Center(
              child: Text(
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: FONT_HEADER),
                textAlign: TextAlign.center,
                RESULTSPSIX,
              ),
            ),
            const SizedBox(height: DEFAULT_MARGIN),
            DropdownItem<String>(
              title: CONTACT,
              items: CONTACTITEM,
              preselectedItem: CONTACTITEM.first,
              onItemChose: (item) {
                //TODO save
              },
              getTitle: (item) => item,
            ),
            DropdownItem<String>(
              title: EMOTIONS,
              items: EMOTIONSiTEM,
              preselectedItem: EMOTIONSiTEM.first,
              onItemChose: (item) {
                //TODO save
              },
              getTitle: (item) => item,
            ),
            DropdownItem<String>(
              title: EMOTIONALFON,
              items: EMOTIONALFONITEMS,
              preselectedItem: EMOTIONALFONITEMS.first,
              onItemChose: (item) {
                //TODO save
              },
              getTitle: (item) => item,
            ),
            const Text(REACTIONFORPOOCHRENIEIPORICANIE),
            DropdownItem<String>(
              title: REACTIONPOSSHRENIE,
              items: REACTIONPOSSHRENIEITEM,
              preselectedItem: REACTIONPOSSHRENIEITEM.first,
              onItemChose: (item) {
                //TODO save
              },
              getTitle: (item) => item,
            ),
            DropdownItem<String>(
              title: REACTIONPORICATIEN,
              items: REACTIONPORICATIENITEM,
              preselectedItem: REACTIONPORICATIENITEM.first,
              onItemChose: (item) {
                //TODO save
              },
              getTitle: (item) => item,
            ),
            DropdownItem<String>(
              title: SELFESTIMATE,
              items: SELFESTIMATEITEM,
              preselectedItem: SELFESTIMATEITEM.first,
              onItemChose: (item) {
                //TODO save
              },
              getTitle: (item) => item,
            ),
            DropdownItem<String>(
              title: CHARACTERSPECIFIC,
              items: CHARACTERSPECIFICITEM,
              preselectedItem: CHARACTERSPECIFICITEM.first,
              onItemChose: (item) {
                //TODO save
              },
              getTitle: (item) => item,
            ),
            const SizedBox(height: DEFAULT_MARGIN_BIG),
            const Center(
              child: Text(
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: FONT_HEADER),
                textAlign: TextAlign.center,
                STATEOFMOTORSPHERE,
              ),
            ),
            DropdownItem<String>(
              title: COORDINATION,
              items: COORDINATIONITEM,
              preselectedItem: COORDINATIONITEM.first,
              onItemChose: (item) {
                //TODO save
              },
              getTitle: (item) => item,
            ),
            DropdownItem<String>(
              title: GENERALMOTORICA,
              items: GENERALMOTORICAITEM,
              preselectedItem: GENERALMOTORICAITEM.first,
              onItemChose: (item) {
                //TODO save
              },
              getTitle: (item) => item,
            ),
            DropdownItem<String>(
              title: LITTLEMOTORICA,
              items: GENERALMOTORICAITEM,
              preselectedItem: GENERALMOTORICAITEM.first,
              onItemChose: (item) {
                //TODO save
              },
              getTitle: (item) => item,
            ),
            DropdownItem<String>(
              title: PRIORITYHAND,
              items: PRIORITYHANDITEM,
              preselectedItem: PRIORITYHANDITEM.first,
              onItemChose: (item) {
                //TODO save
              },
              getTitle: (item) => item,
            ),
            DropdownItem<String>(
              title: MIMICALMOTORICA,
              items: MIMICALMOTORICAITEM,
              preselectedItem: MIMICALMOTORICAITEM.first,
              onItemChose: (item) {
                //TODO save
              },
              getTitle: (item) => item,
            ),
            const SizedBox(height: DEFAULT_MARGIN_BIG),
            const Center(
              child: Text(
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: FONT_HEADER),
                textAlign: TextAlign.center,
                DEVELOPOMENTDELAYS,
              ),
            ),
            const Text(ATTENTION),
            DropdownItem<String>(
              title: PROIZVOL,
              items: RANDOMNESSITEMSATTENTION,
              preselectedItem: RANDOMNESSITEMSATTENTION.first,
              onItemChose: (item) {
                //TODO save
              },
              getTitle: (item) => item,
            ),
            DropdownItem<String>(
              title: USTOICH,
              items: STABILITYITEMSATTENTION,
              preselectedItem: STABILITYITEMSATTENTION.first,
              onItemChose: (item) {
                //TODO save
              },
              getTitle: (item) => item,
            ),
            DropdownItem<String>(
              title: VOLUME,
              items: VOLUMEITEMSATTENTION,
              preselectedItem: VOLUMEITEMSATTENTION.first,
              onItemChose: (item) {
                //TODO save
              },
              getTitle: (item) => item,
            ),
            DropdownItem<String>(
              title: RECOGNITION,
              items: RECOGNITIONITEM,
              preselectedItem: RECOGNITIONITEM.first,
              onItemChose: (item) {
                //TODO save
              },
              getTitle: (item) => item,
            ),
            DropdownItem<String>(
              title: TACTIL,
              items: RECOGNITIONTACTICALITEM,
              preselectedItem: RECOGNITIONTACTICALITEM.first,
              onItemChose: (item) {
                //TODO save
              },
              getTitle: (item) => item,
            ),
            DropdownItem<String>(
              title: SPACEPREDSTAVLENIE,
              items: SPACEPREDSTAVLENIEITEM,
              preselectedItem: SPACEPREDSTAVLENIEITEM.first,
              onItemChose: (item) {
                //TODO save
              },
              getTitle: (item) => item,
            ),
            DropdownItem<String>(
              title: TIMEPREDSTAVLENIE,
              items: TIMEPREDSTAVLENIEITEM,
              preselectedItem: TIMEPREDSTAVLENIEITEM.first,
              onItemChose: (item) {
                //TODO save
              },
              getTitle: (item) => item,
            ),
            DropdownItem<String>(
              title: CONSTRUCTIVEPRACSIS,
              items: CONSTRUCTIVEPRACSISITEM,
              preselectedItem: CONSTRUCTIVEPRACSISITEM.first,
              onItemChose: (item) {
                //TODO save
              },
              getTitle: (item) => item,
            ),
            DropdownItem<String>(
              title: MEMORY,
              items: MEMORYITEM,
              preselectedItem: MEMORYITEM.first,
              onItemChose: (item) {
                //TODO save
              },
              getTitle: (item) => item,
            ),
            DropdownItem<String>(
              title: IMAGINATION,
              items: IMAGINATIONITEM,
              preselectedItem: IMAGINATIONITEM.first,
              onItemChose: (item) {
                //TODO save
              },
              getTitle: (item) => item,
            ),
            DropdownItem<String>(
              title: THINKING,
              items: THINKINGITEM,
              preselectedItem: THINKINGITEM.first,
              onItemChose: (item) {
                //TODO save
              },
              getTitle: (item) => item,
            ),
            DropdownItem<String>(
              title: MODESOFACTION,
              items: MODESOFACTIONITEM,
              preselectedItem: MODESOFACTIONITEM.first,
              onItemChose: (item) {
                //TODO save
              },
              getTitle: (item) => item,
            ),
            DropdownItem<String>(
              title: PREDOMINANTFORMOFTHINKING,
              items: PREDOMINANTFORMOFTHINKINGITEM,
              preselectedItem: PREDOMINANTFORMOFTHINKINGITEM.first,
              onItemChose: (item) {
                //TODO save
              },
              getTitle: (item) => item,
            ),
            const Text(OPERATIONSTORONA),
            DropdownItem<String>(
              title: ANALISANDSINTES,
              items: ANALISANDSINTESITEM,
              preselectedItem: ANALISANDSINTESITEM.first,
              onItemChose: (item) {
                //TODO save
              },
              getTitle: (item) => item,
            ),
            DropdownItem<String>(
              title: GENERALIZATION,
              items: GENERALIZATIONITEM,
              preselectedItem: GENERALIZATIONITEM.first,
              onItemChose: (item) {
                //TODO save
              },
              getTitle: (item) => item,
            ),
            DropdownItem<String>(
              title: PERENOS,
              items: PERENOSITEM,
              preselectedItem: PERENOSITEM.first,
              onItemChose: (item) {
                //TODO save
              },
              getTitle: (item) => item,
            ),
            DropdownItem<String>(
              title: SRAVNENIE,
              items: SRAVNENIEITEM,
              preselectedItem: SRAVNENIEITEM.first,
              onItemChose: (item) {
                //TODO save
              },
              getTitle: (item) => item,
            ),
            DropdownItem<String>(
              title: UPORIADOCHIVANIE,
              items: UPORIADOCHIVANIEITEM,
              preselectedItem: UPORIADOCHIVANIEITEM.first,
              onItemChose: (item) {
                //TODO save
              },
              getTitle: (item) => item,
            ),
            DropdownItem<String>(
              title: RESULTATIVNOST,
              items: RESULTATIVNOSTITEM,
              preselectedItem: RESULTATIVNOSTITEM.first,
              onItemChose: (item) {
                //TODO save
              },
              getTitle: (item) => item,
            ),
            DropdownItem<String>(
              title: DOZIROVANAYAHELP,
              items: DOZIROVANAYAHELPITEM,
              preselectedItem: DOZIROVANAYAHELPITEM.first,
              onItemChose: (item) {
                //TODO save
              },
              getTitle: (item) => item,
            ),
            DropdownItem<String>(
              title: CHARACTERDEYATELNOSTI,
              items: CHARACTERDEYATELNOSTIITEM,
              preselectedItem: CHARACTERDEYATELNOSTIITEM.first,
              onItemChose: (item) {
                //TODO save
              },
              getTitle: (item) => item,
            ),
            DropdownItem<String>(
              title: MOTIVATION,
              items: MOTIVATIONITEM,
              preselectedItem: MOTIVATIONITEM.first,
              onItemChose: (item) {
                //TODO save
              },
              getTitle: (item) => item,
            ),
            const Text(TEMPACTIVITYRABOTOSPOSOBNOST),
            DropdownItem<String>(
              title: TEMP,
              items: TEMPITEM,
              preselectedItem: TEMPITEM.first,
              onItemChose: (item) {
                //TODO save
              },
              getTitle: (item) => item,
            ),
            DropdownItem<String>(
              title: RABOTOSPOSOBNOST,
              items: RABOTOSPOSOBNOSTITEM,
              preselectedItem: RABOTOSPOSOBNOSTITEM.first,
              onItemChose: (item) {
                //TODO save
              },
              getTitle: (item) => item,
            ),
            const SizedBox(height: DEFAULT_MARGIN_BIG),
            const Center(
              child: Text(
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: FONT_HEADER),
                textAlign: TextAlign.center,
                OSOBENNOTIRECHEVOGO,
              ),
            ),
            InputFieldWithTitle(
              title: IMPRESSIONSPEECH,
              onTextChanged: (str) {
                //TODO save impressive speech
              },
            ),
            InputFieldWithTitle(
              title: EKSPRESSIONSPEECH,
              onTextChanged: (str) {
                //TODO save ekspressive speech
              },
            ),
            InputFieldWithTitle(
              title: DICTIONARY,
              onTextChanged: (str) {
                //TODO save vocabulary
              },
            ),
            InputFieldWithTitle(
              title: SLOGSTRUCTURE,
              onTextChanged: (str) {
                //TODO save structure
              },
            ),
            InputFieldWithTitle(
              title: GRAMMATICALSTROY,
              onTextChanged: (str) {
                //TODO save grammatical
              },
            ),
            InputFieldWithTitle(
              title: SVYASNAYASPEECH,
              onTextChanged: (str) {
                //TODO save speech
              },
            ),
            InputFieldWithTitle(
              title: SVYASNAYASPEECH,
              onTextChanged: (str) {
                //TODO save speech
              },
            ),
            InputFieldWithTitle(
              title: SOUNDPROIZNOSHENIE,
              onTextChanged: (str) {
                //TODO save sound
              },
            ),
            InputFieldWithTitle(
              title: ARTICULATION,
              onTextChanged: (str) {
                //TODO save articulation
              },
            ),
            InputFieldWithTitle(
              title: ARTICULATIONMOTORICA,
              onTextChanged: (str) {
                //TODO save articulation and motorica
              },
            ),
            InputFieldWithTitle(
              title: GOLOSOOBRAZOVANIE,
              onTextChanged: (str) {
                //TODO save sound creating
              },
            ),
            InputFieldWithTitle(
              title: FONEMATICSOUND,
              onTextChanged: (str) {
                //TODO save phonematic
              },
            ),
            const SizedBox(height: DEFAULT_MARGIN_BIG),
            const Center(
              child: Text(
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: FONT_HEADER),
                textAlign: TextAlign.center,
                OSOBENNOSTIRAZVITIEGAMING,
              ),
            ),
            InputFieldWithTitle(
              title: CHARACTERACTIONWITHTIYS,
              onTextChanged: (str) {
                //TODO save toys
              },
            ),
            InputFieldWithTitle(
              title: PROYAVLENIEINTERESA,
              onTextChanged: (str) {
                //TODO save stress
              },
            ),
            InputFieldWithTitle(
              title: ADEKVATNOSTTOYS,
              onTextChanged: (str) {
                //TODO save adekvatnost
              },
            ),
            InputFieldWithTitle(
              title: USINGPRESMETOV,
              onTextChanged: (str) {
                //TODO save things
              },
            ),
            const SizedBox(height: DEFAULT_MARGIN_BIG),
            const Center(
              child: Text(
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: FONT_HEADER),
                textAlign: TextAlign.center,
                ADAPTIVEACTION,
              ),
            ),
            InputFieldWithTitle(
              title: SELFCATERING,
              onTextChanged: (str) {
                //TODO save self
              },
            ),
            InputFieldWithTitle(
              title: COMMUNICATIONALSKILLS,
              onTextChanged: (str) {
                //TODO save communication skills
              },
            ),
            InputFieldWithTitle(
              title: PREDPOCHITAEMIEACTIVITY,
              onTextChanged: (str) {
                //TODO save activity
              },
            ),
            const SizedBox(height: DEFAULT_MARGIN_BIG),
            const Center(
              child: Text(
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: FONT_HEADER),
                textAlign: TextAlign.center,
                LEVELOFSPECIAL,
              ),
            ),
            InputFieldWithTitle(
              title: GENERALAWARNESS,
              onTextChanged: (str) {
                //TODO save general
              },
            ),
            InputFieldWithTitle(
              title: ELEMENTSOFMATH,
              onTextChanged: (str) {
                //TODO save math
              },
            ),
            InputFieldWithTitle(
              title: ZNANIEBUKV,
              onTextChanged: (str) {
                //TODO save litter
              },
            ),
            InputFieldWithTitle(
              title: IZOBRAZITELNAYAACTIVITY,
              onTextChanged: (str) {
                //TODO save izobretactivity
              },
            ),
            InputFieldWithTitle(
              title: ZAVEDYUSHI,
              onTextChanged: (str) {
                //TODO save zaved
              },
            ),
            InputFieldWithTitle(
              title: VOSPITATEL,
              onTextChanged: (str) {
                //TODO save vospit
              },
            ),
            InputFieldWithTitle(
              title: PEDAGOGPSIX,
              onTextChanged: (str) {
                //TODO save counselor
              },
            ),
            InputFieldWithTitle(
              title: TEZHERDEFECT,
              onTextChanged: (str) {
                //TODO save defect
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
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
