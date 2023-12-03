import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pw;

import '../common/InputHeader.dart';
import '../common/abstract_pdf_widget.dart';
import '../common/date_button_with_title.dart';
import '../common/dropdown_item.dart';
import '../common/header.dart';
import '../common/input_field_with_date.dart';
import '../common/input_field_with_title.dart';
import '../common/pdf_converter_interface.dart';
import '../common/small_header.dart';
import '../common/vertical_pdf_margin.dart';
import '../resources/const.dart';
import 'data.dart';

class ContentTemplateOne extends StatefulWidget
    implements PdfConverterInterface {
  ContentTemplateOne({super.key});

  final _ContentTemplateOneState state = _ContentTemplateOneState();

  @override
  _ContentTemplateOneState createState() => state;

  @override
  Future<List<pw.Widget>> getListPDFWidgets() {
    return state.getListPDFWidgets();
  }
}

class _ContentTemplateOneState extends State<ContentTemplateOne>
    implements PdfConverterInterface {
  Column mainColumn = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      InputHeader(controller: TextEditingController(), hint: INPUT_HEADER_HINT),
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
        
      ),
      DropdownItem<String>(
        title: EMOTIONS,
        items: EMOTIONSiTEM,
        preselectedItem: EMOTIONSiTEM.first,
        
      ),
      DropdownItem<String>(
        title: EMOTIONALFON,
        items: EMOTIONALFONITEMS,
        preselectedItem: EMOTIONALFONITEMS.first,
        
      ),
      const VerticalPdfMargin(margin: DEFAULT_MARGIN),
      const SmallHeader(smallHeader: REACTIONFORPOOCHRENIEIPORICANIE),
      DropdownItem<String>(
        title: REACTIONPOSSHRENIE,
        items: REACTIONPOSSHRENIEITEM,
        preselectedItem: REACTIONPOSSHRENIEITEM.first,
        
      ),
      DropdownItem<String>(
        title: REACTIONPORICATIEN,
        items: REACTIONPORICATIENITEM,
        preselectedItem: REACTIONPORICATIENITEM.first,
        
      ),
      DropdownItem<String>(
        title: SELFESTIMATE,
        items: SELFESTIMATEITEM,
        preselectedItem: SELFESTIMATEITEM.first,
        
      ),
      DropdownItem<String>(
        title: CHARACTERSPECIFIC,
        items: CHARACTERSPECIFICITEM,
        preselectedItem: CHARACTERSPECIFICITEM.first,
        
      ),
      const VerticalPdfMargin(margin: DEFAULT_MARGIN_BIG),
      const Header(header: STATEOFMOTORSPHERE),
      DropdownItem<String>(
        title: COORDINATION,
        items: COORDINATIONITEM,
        preselectedItem: COORDINATIONITEM.first,
        
      ),
      DropdownItem<String>(
        title: GENERALMOTORICA,
        items: GENERALMOTORICAITEM,
        preselectedItem: GENERALMOTORICAITEM.first,
        
      ),
      DropdownItem<String>(
        title: LITTLEMOTORICA,
        items: GENERALMOTORICAITEM,
        preselectedItem: GENERALMOTORICAITEM.first,
        
      ),
      DropdownItem<String>(
        title: PRIORITYHAND,
        items: PRIORITYHANDITEM,
        preselectedItem: PRIORITYHANDITEM.first,
        
      ),
      DropdownItem<String>(
        title: MIMICALMOTORICA,
        items: MIMICALMOTORICAITEM,
        preselectedItem: MIMICALMOTORICAITEM.first,
        
      ),
      const VerticalPdfMargin(margin: DEFAULT_MARGIN_BIG),
      const Header(header: DEVELOPOMENTDELAYS),
      const VerticalPdfMargin(margin: DEFAULT_MARGIN),
      const SmallHeader(smallHeader: ATTENTION),
      DropdownItem<String>(
        title: PROIZVOL,
        items: RANDOMNESSITEMSATTENTION,
        preselectedItem: RANDOMNESSITEMSATTENTION.first,
        
      ),
      DropdownItem<String>(
        title: USTOICH,
        items: STABILITYITEMSATTENTION,
        preselectedItem: STABILITYITEMSATTENTION.first,
        
      ),
      DropdownItem<String>(
        title: VOLUME,
        items: VOLUMEITEMSATTENTION,
        preselectedItem: VOLUMEITEMSATTENTION.first,
        
      ),
      DropdownItem<String>(
        title: RECOGNITION,
        items: RECOGNITIONITEM,
        preselectedItem: RECOGNITIONITEM.first,
        
      ),
      DropdownItem<String>(
        title: TACTIL,
        items: RECOGNITIONTACTICALITEM,
        preselectedItem: RECOGNITIONTACTICALITEM.first,
        
      ),
      DropdownItem<String>(
        title: SPACEPREDSTAVLENIE,
        items: SPACEPREDSTAVLENIEITEM,
        preselectedItem: SPACEPREDSTAVLENIEITEM.first,
        
      ),
      DropdownItem<String>(
        title: TIMEPREDSTAVLENIE,
        items: TIMEPREDSTAVLENIEITEM,
        preselectedItem: TIMEPREDSTAVLENIEITEM.first,
        
      ),
      DropdownItem<String>(
        title: CONSTRUCTIVEPRACSIS,
        items: CONSTRUCTIVEPRACSISITEM,
        preselectedItem: CONSTRUCTIVEPRACSISITEM.first,
        
      ),
      DropdownItem<String>(
        title: MEMORY,
        items: MEMORYITEM,
        preselectedItem: MEMORYITEM.first,
        
      ),
      DropdownItem<String>(
        title: IMAGINATION,
        items: IMAGINATIONITEM,
        preselectedItem: IMAGINATIONITEM.first,
        
      ),
      DropdownItem<String>(
        title: THINKING,
        items: THINKINGITEM,
        preselectedItem: THINKINGITEM.first,
        
      ),
      DropdownItem<String>(
        title: MODESOFACTION,
        items: MODESOFACTIONITEM,
        preselectedItem: MODESOFACTIONITEM.first,
        
      ),
      DropdownItem<String>(
        title: PREDOMINANTFORMOFTHINKING,
        items: PREDOMINANTFORMOFTHINKINGITEM,
        preselectedItem: PREDOMINANTFORMOFTHINKINGITEM.first,
        
      ),
      const VerticalPdfMargin(margin: DEFAULT_MARGIN),
      const SmallHeader(smallHeader: OPERATIONSTORONA),
      DropdownItem<String>(
        title: ANALISANDSINTES,
        items: ANALISANDSINTESITEM,
        preselectedItem: ANALISANDSINTESITEM.first,
        
      ),
      DropdownItem<String>(
        title: GENERALIZATION,
        items: GENERALIZATIONITEM,
        preselectedItem: GENERALIZATIONITEM.first,
        
      ),
      DropdownItem<String>(
        title: PERENOS,
        items: PERENOSITEM,
        preselectedItem: PERENOSITEM.first,
        
      ),
      DropdownItem<String>(
        title: SRAVNENIE,
        items: SRAVNENIEITEM,
        preselectedItem: SRAVNENIEITEM.first,
        
      ),
      DropdownItem<String>(
        title: UPORIADOCHIVANIE,
        items: UPORIADOCHIVANIEITEM,
        preselectedItem: UPORIADOCHIVANIEITEM.first,
        
      ),
      DropdownItem<String>(
        title: RESULTATIVNOST,
        items: RESULTATIVNOSTITEM,
        preselectedItem: RESULTATIVNOSTITEM.first,
        
      ),
      DropdownItem<String>(
        title: DOZIROVANAYAHELP,
        items: DOZIROVANAYAHELPITEM,
        preselectedItem: DOZIROVANAYAHELPITEM.first,
        
      ),
      DropdownItem<String>(
        title: CHARACTERDEYATELNOSTI,
        items: CHARACTERDEYATELNOSTIITEM,
        preselectedItem: CHARACTERDEYATELNOSTIITEM.first,
        
      ),
      DropdownItem<String>(
        title: MOTIVATION,
        items: MOTIVATIONITEM,
        preselectedItem: MOTIVATIONITEM.first,
        
      ),
      const VerticalPdfMargin(margin: DEFAULT_MARGIN),
      const SmallHeader(smallHeader: TEMPACTIVITYRABOTOSPOSOBNOST),
      DropdownItem<String>(
        title: TEMP,
        items: TEMPITEM,
        preselectedItem: TEMPITEM.first,
        
      ),
      DropdownItem<String>(
        title: RABOTOSPOSOBNOST,
        items: RABOTOSPOSOBNOSTITEM,
        preselectedItem: RABOTOSPOSOBNOSTITEM.first,
        
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
      const VerticalPdfMargin(margin: DEFAULT_MARGIN_BIG),
      InputFieldWithDate(title: ZAVEDYUSHI),
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
  Future<List<pw.Widget>> getListPDFWidgets() async {
    List<pw.Widget> rv = [];

    for (Widget widget in mainColumn.children) {
      rv.add(await (widget as AbstractPdfWidget).getPwWidget());
    }

    return rv;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: DEFAULT_MARGIN_BIGER, horizontal: DEFAULT_MARGIN),
        child: mainColumn,
      )),
    );
  }
}
