import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pdf/widgets.dart' as pw;

import '../common/abstract_pdf_widget.dart';
import '../common/date_button_with_title.dart';
import '../common/dropdown_item.dart';
import '../common/header.dart';
import '../common/input_field_with_title.dart';
import '../common/pdf_converter_interface.dart';
import '../common/small_header.dart';
import '../common/vertical_pdf_margin.dart';
import '../resources/const.dart';
import 'data.dart';

class ContentTemplateOne extends StatefulWidget implements PdfConverterInterface {
  ContentTemplateOne({super.key});

  final _ContentTemplateOneState state = _ContentTemplateOneState();

  @override
  _ContentTemplateOneState createState() => state;

  @override
  Future<File> getPdf() {
    return state.getPdf();
  }
}

class _ContentTemplateOneState extends State<ContentTemplateOne>
    implements PdfConverterInterface {
  Column mainColumn = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Header(header: HEADER),
      const VerticalPdfMargin(margin: DEFAULT_MARGIN),
      InputFieldWithTitle(
        title: FIOCHILD,
      ),
      DateButtonWithTitle(
        minAge: 0,
        title: DATEOFBIRTH,
      ),
      DropdownItem<String>(
        title: GROUP_ST_SPEC,
        items: GROUP_OT_SPEC_ITEMS,
        preselectedItem: GROUP_OT_SPEC_ITEMS.first,
        getTitle: (item) => item,
      ),
      InputFieldWithTitle(
        title: HOMEADDRES,
      ),
      InputFieldWithTitle(
        title: PHONENUMBER,
      ),
      InputFieldWithTitle(
        title: FAMILY,
      ),
      InputFieldWithTitle(
        title: MOTHERS_NAME,
      ),
      DateButtonWithTitle(
        minAge: MIN_PARRENT_AGE,
        title: YEAROFBIRTH,
      ),
      InputFieldWithTitle(
        title: FATHERS_NAME,
      ),
      DateButtonWithTitle(
        minAge: MIN_PARRENT_AGE,
        title: YEAROFBIRTH,
      ),
      InputFieldWithTitle(
        title: EDUCATION,
      ),
      InputFieldWithTitle(
        title: HELP,
      ),
      const VerticalPdfMargin(margin: DEFAULT_MARGIN_BIG),
      const Header(header: RESULTSPSIX),
      const VerticalPdfMargin(margin: DEFAULT_MARGIN),
      DropdownItem<String>(
        title: CONTACT,
        items: CONTACTITEM,
        preselectedItem: CONTACTITEM.first,
        getTitle: (item) => item,
      ),
      DropdownItem<String>(
        title: EMOTIONS,
        items: EMOTIONSiTEM,
        preselectedItem: EMOTIONSiTEM.first,
        getTitle: (item) => item,
      ),
      DropdownItem<String>(
        title: EMOTIONALFON,
        items: EMOTIONALFONITEMS,
        preselectedItem: EMOTIONALFONITEMS.first,
        getTitle: (item) => item,
      ),
      const SmallHeader(smallHeader: REACTIONFORPOOCHRENIEIPORICANIE),
      DropdownItem<String>(
        title: REACTIONPOSSHRENIE,
        items: REACTIONPOSSHRENIEITEM,
        preselectedItem: REACTIONPOSSHRENIEITEM.first,
        getTitle: (item) => item,
      ),
      DropdownItem<String>(
        title: REACTIONPORICATIEN,
        items: REACTIONPORICATIENITEM,
        preselectedItem: REACTIONPORICATIENITEM.first,
        getTitle: (item) => item,
      ),
      DropdownItem<String>(
        title: SELFESTIMATE,
        items: SELFESTIMATEITEM,
        preselectedItem: SELFESTIMATEITEM.first,
        getTitle: (item) => item,
      ),
      DropdownItem<String>(
        title: CHARACTERSPECIFIC,
        items: CHARACTERSPECIFICITEM,
        preselectedItem: CHARACTERSPECIFICITEM.first,
        getTitle: (item) => item,
      ),
      const VerticalPdfMargin(margin: DEFAULT_MARGIN_BIG),
      const Header(header: STATEOFMOTORSPHERE),
      DropdownItem<String>(
        title: COORDINATION,
        items: COORDINATIONITEM,
        preselectedItem: COORDINATIONITEM.first,
        getTitle: (item) => item,
      ),
      DropdownItem<String>(
        title: GENERALMOTORICA,
        items: GENERALMOTORICAITEM,
        preselectedItem: GENERALMOTORICAITEM.first,
        getTitle: (item) => item,
      ),
      DropdownItem<String>(
        title: LITTLEMOTORICA,
        items: GENERALMOTORICAITEM,
        preselectedItem: GENERALMOTORICAITEM.first,
        getTitle: (item) => item,
      ),
      DropdownItem<String>(
        title: PRIORITYHAND,
        items: PRIORITYHANDITEM,
        preselectedItem: PRIORITYHANDITEM.first,
        getTitle: (item) => item,
      ),
      DropdownItem<String>(
        title: MIMICALMOTORICA,
        items: MIMICALMOTORICAITEM,
        preselectedItem: MIMICALMOTORICAITEM.first,
        getTitle: (item) => item,
      ),
      const VerticalPdfMargin(margin: DEFAULT_MARGIN_BIG),
      const Header(header: DEVELOPOMENTDELAYS),
      const SmallHeader(smallHeader: ATTENTION),
      DropdownItem<String>(
        title: PROIZVOL,
        items: RANDOMNESSITEMSATTENTION,
        preselectedItem: RANDOMNESSITEMSATTENTION.first,
        getTitle: (item) => item,
      ),
      DropdownItem<String>(
        title: USTOICH,
        items: STABILITYITEMSATTENTION,
        preselectedItem: STABILITYITEMSATTENTION.first,
        getTitle: (item) => item,
      ),
      DropdownItem<String>(
        title: VOLUME,
        items: VOLUMEITEMSATTENTION,
        preselectedItem: VOLUMEITEMSATTENTION.first,
        getTitle: (item) => item,
      ),
      DropdownItem<String>(
        title: RECOGNITION,
        items: RECOGNITIONITEM,
        preselectedItem: RECOGNITIONITEM.first,
        getTitle: (item) => item,
      ),
      DropdownItem<String>(
        title: TACTIL,
        items: RECOGNITIONTACTICALITEM,
        preselectedItem: RECOGNITIONTACTICALITEM.first,
        getTitle: (item) => item,
      ),
      DropdownItem<String>(
        title: SPACEPREDSTAVLENIE,
        items: SPACEPREDSTAVLENIEITEM,
        preselectedItem: SPACEPREDSTAVLENIEITEM.first,
        getTitle: (item) => item,
      ),
      DropdownItem<String>(
        title: TIMEPREDSTAVLENIE,
        items: TIMEPREDSTAVLENIEITEM,
        preselectedItem: TIMEPREDSTAVLENIEITEM.first,
        getTitle: (item) => item,
      ),
      DropdownItem<String>(
        title: CONSTRUCTIVEPRACSIS,
        items: CONSTRUCTIVEPRACSISITEM,
        preselectedItem: CONSTRUCTIVEPRACSISITEM.first,
        getTitle: (item) => item,
      ),
      DropdownItem<String>(
        title: MEMORY,
        items: MEMORYITEM,
        preselectedItem: MEMORYITEM.first,
        getTitle: (item) => item,
      ),
      DropdownItem<String>(
        title: IMAGINATION,
        items: IMAGINATIONITEM,
        preselectedItem: IMAGINATIONITEM.first,
        getTitle: (item) => item,
      ),
      DropdownItem<String>(
        title: THINKING,
        items: THINKINGITEM,
        preselectedItem: THINKINGITEM.first,
        getTitle: (item) => item,
      ),
      DropdownItem<String>(
        title: MODESOFACTION,
        items: MODESOFACTIONITEM,
        preselectedItem: MODESOFACTIONITEM.first,
        getTitle: (item) => item,
      ),
      DropdownItem<String>(
        title: PREDOMINANTFORMOFTHINKING,
        items: PREDOMINANTFORMOFTHINKINGITEM,
        preselectedItem: PREDOMINANTFORMOFTHINKINGITEM.first,
        getTitle: (item) => item,
      ),
      const SmallHeader(smallHeader: OPERATIONSTORONA),
      DropdownItem<String>(
        title: ANALISANDSINTES,
        items: ANALISANDSINTESITEM,
        preselectedItem: ANALISANDSINTESITEM.first,
        getTitle: (item) => item,
      ),
      DropdownItem<String>(
        title: GENERALIZATION,
        items: GENERALIZATIONITEM,
        preselectedItem: GENERALIZATIONITEM.first,
        getTitle: (item) => item,
      ),
      DropdownItem<String>(
        title: PERENOS,
        items: PERENOSITEM,
        preselectedItem: PERENOSITEM.first,
        getTitle: (item) => item,
      ),
      DropdownItem<String>(
        title: SRAVNENIE,
        items: SRAVNENIEITEM,
        preselectedItem: SRAVNENIEITEM.first,
        getTitle: (item) => item,
      ),
      DropdownItem<String>(
        title: UPORIADOCHIVANIE,
        items: UPORIADOCHIVANIEITEM,
        preselectedItem: UPORIADOCHIVANIEITEM.first,
        getTitle: (item) => item,
      ),
      DropdownItem<String>(
        title: RESULTATIVNOST,
        items: RESULTATIVNOSTITEM,
        preselectedItem: RESULTATIVNOSTITEM.first,
        getTitle: (item) => item,
      ),
      DropdownItem<String>(
        title: DOZIROVANAYAHELP,
        items: DOZIROVANAYAHELPITEM,
        preselectedItem: DOZIROVANAYAHELPITEM.first,
        getTitle: (item) => item,
      ),
      DropdownItem<String>(
        title: CHARACTERDEYATELNOSTI,
        items: CHARACTERDEYATELNOSTIITEM,
        preselectedItem: CHARACTERDEYATELNOSTIITEM.first,
        getTitle: (item) => item,
      ),
      DropdownItem<String>(
        title: MOTIVATION,
        items: MOTIVATIONITEM,
        preselectedItem: MOTIVATIONITEM.first,
        getTitle: (item) => item,
      ),
      const SmallHeader(smallHeader: TEMPACTIVITYRABOTOSPOSOBNOST),
      DropdownItem<String>(
        title: TEMP,
        items: TEMPITEM,
        preselectedItem: TEMPITEM.first,
        getTitle: (item) => item,
      ),
      DropdownItem<String>(
        title: RABOTOSPOSOBNOST,
        items: RABOTOSPOSOBNOSTITEM,
        preselectedItem: RABOTOSPOSOBNOSTITEM.first,
        getTitle: (item) => item,
      ),
      const VerticalPdfMargin(margin: DEFAULT_MARGIN_BIG),
      const Header(header: OSOBENNOTIRECHEVOGO),
      InputFieldWithTitle(
        title: IMPRESSIONSPEECH,
      ),
      InputFieldWithTitle(
        title: EKSPRESSIONSPEECH,
      ),
      InputFieldWithTitle(
        title: DICTIONARY,
      ),
      InputFieldWithTitle(
        title: SLOGSTRUCTURE,
      ),
      InputFieldWithTitle(
        title: GRAMMATICALSTROY,
      ),
      InputFieldWithTitle(
        title: SVYASNAYASPEECH,
      ),
      InputFieldWithTitle(
        title: SVYASNAYASPEECH,
      ),
      InputFieldWithTitle(
        title: SOUNDPROIZNOSHENIE,
      ),
      InputFieldWithTitle(
        title: ARTICULATION,
      ),
      InputFieldWithTitle(
        title: ARTICULATIONMOTORICA,
      ),
      InputFieldWithTitle(
        title: GOLOSOOBRAZOVANIE,
      ),
      InputFieldWithTitle(
        title: FONEMATICSOUND,
      ),
      const VerticalPdfMargin(margin: DEFAULT_MARGIN_BIG),
      const Header(header: OSOBENNOSTIRAZVITIEGAMING),
      InputFieldWithTitle(
        title: CHARACTERACTIONWITHTIYS,
      ),
      InputFieldWithTitle(
        title: PROYAVLENIEINTERESA,
      ),
      InputFieldWithTitle(
        title: ADEKVATNOSTTOYS,
      ),
      InputFieldWithTitle(
        title: USINGPRESMETOV,
      ),
      const VerticalPdfMargin(margin: DEFAULT_MARGIN_BIG),
      const Header(header: ADAPTIVEACTION),
      InputFieldWithTitle(
        title: SELFCATERING,
      ),
      InputFieldWithTitle(
        title: COMMUNICATIONALSKILLS,
      ),
      InputFieldWithTitle(
        title: PREDPOCHITAEMIEACTIVITY,
      ),
      const VerticalPdfMargin(margin: DEFAULT_MARGIN_BIG),
      const Header(header: LEVELOFSPECIAL),
      InputFieldWithTitle(
        title: GENERALAWARNESS,
      ),
      InputFieldWithTitle(
        title: ELEMENTSOFMATH,
      ),
      InputFieldWithTitle(
        title: ZNANIEBUKV,
      ),
      InputFieldWithTitle(
        title: IZOBRAZITELNAYAACTIVITY,
      ),
      InputFieldWithTitle(
        title: ZAVEDYUSHI,
      ),
      InputFieldWithTitle(
        title: VOSPITATEL,
      ),
      InputFieldWithTitle(
        title: PEDAGOGPSIX,
      ),
      InputFieldWithTitle(
        title: TEZHERDEFECT,
      ),
    ],
  );

  @override
  Future<File> getPdf() async {
    pw.Document pdf = pw.Document();

    //var font = pw.Font.ttf(await rootBundle.load("assets/NotoSerif-Black.ttf"));

    pdf.addPage(
      pw.Page(
          build: (pw.Context context) => pw.Column(
              children: mainColumn.children
                  .map((e) => (e as AbstractPdfWidget).getPwWidget())
                  .toList())),
    );

    File file = File(
        "assets/$appName${DateFormat(PDF_TITLE_TIMESTAMP).format(DateTime.now())}.pdf");
    file.create();
    file.writeAsBytes(await pdf.save());
    return file;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(child: mainColumn),
    );
  }
}
