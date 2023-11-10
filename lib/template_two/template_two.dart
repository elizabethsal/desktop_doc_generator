import 'package:desktop_doc_generator/common/pdf_converter_interface.dart';
import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pw;

import '../common/date_button_with_title.dart';
import '../common/dropdown_item.dart';
import '../common/header.dart';
import '../common/input_field_with_title.dart';
import '../common/small_header.dart';
import '../common/vertical_pdf_margin.dart';
import '../resources/const.dart';
import '../template_two/data.dart';

class ContentTemplateTwo extends StatefulWidget
    implements PdfConverterInterface {
  ContentTemplateTwo({super.key});

  final _ContentTemplateTwo state = _ContentTemplateTwo();

  @override
  _ContentTemplateTwo createState() => state;

  @override
  Future<List<pw.Widget>> getListPDFWidgets() {
    return state.getListPDFWidgets();
  }
}

class _ContentTemplateTwo extends State<ContentTemplateTwo>
    implements PdfConverterInterface {
  Column mainColumn =
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    const Header(header: HEADER),
    const VerticalPdfMargin(margin: DEFAULT_MARGIN),
    InputFieldWithTitle(
      title: INITIALSFIRSTTEACHER,
    ),
    InputFieldWithTitle(
      title: INITIALSSECONDTEACHER,
    ),
    InputFieldWithTitle(
      title: FIOCHILD,
    ),
    DateButtonWithTitle(
      minAge: 0,
      title: DATEOFBIRTH,
    ),
    DropdownItem<String>(
      title: GROUP,
      items: GROUP_ITEMS,
      preselectedItem: GROUP_ITEMS.first,
      convertToString: (item) => item,
    ),
    InputFieldWithTitle(
      title: HOMEADDRES,
    ),
    InputFieldWithTitle(
      title: PHONENUMBER,
    ),
    DropdownItem<String>(
      title: FAMILY,
      items: FAMILY_ITEMS,
      preselectedItem: FAMILY_ITEMS.first,
      convertToString: (item) => item,
    ),
    DropdownItem<String>(
      title: CONDITIONS,
      items: CONDITIONS_ITEMS,
      preselectedItem: CONDITIONS_ITEMS.first,
      convertToString: (item) => item,
    ),
    const VerticalPdfMargin(margin: DEFAULT_MARGIN),
    const SmallHeader(smallHeader: INFROMATION_ABOUT_PARENTS),
    InputFieldWithTitle(
      title: MOTHERS_NAME,
    ),
    DateButtonWithTitle(
      minAge: MIN_PARRENT_AGE,
      title: YEAROFBIRTH,
    ),
    DropdownItem<String>(
      title: MOTHERS_EDUCATION,
      items: EDUCATIONS_ITEMS,
      preselectedItem: EDUCATIONS_ITEMS.first,
      convertToString: (item) => item,
    ),
    DropdownItem<String>(
      title: MOTHERS_OCCUPATION,
      items: MOTHERS_OCCUPATION_ITEMS,
      preselectedItem: MOTHERS_OCCUPATION_ITEMS.first,
      convertToString: (item) => item,
    ),
    InputFieldWithTitle(
      title: MOTHERS_WORK,
    ),
    InputFieldWithTitle(
      title: MOBILENUMBER,
    ),
    InputFieldWithTitle(
      title: FATHERS_NAME,
    ),
    DateButtonWithTitle(
      minAge: MIN_PARRENT_AGE,
      title: YEAROFBIRTH,
    ),
    DropdownItem<String>(
      title: FATHERS_EDUCATION,
      items: EDUCATIONS_ITEMS,
      preselectedItem: EDUCATIONS_ITEMS.first,
      convertToString: (item) => item,
    ),
    DropdownItem<String>(
      title: FATHERS_OCCUPATION,
      items: FATHERS_OCCUPATION_ITEMS,
      preselectedItem: FATHERS_OCCUPATION_ITEMS.first,
      convertToString: (item) => item,
    ),
    InputFieldWithTitle(
      title: FATHERS_WORK,
    ),
    InputFieldWithTitle(
      title: COMPLAIN_PARENTS,
    ),
    DropdownItem<String>(
      title: HELP_PROVIDED,
      items: HELP_PROVIDED_ITEMS,
      preselectedItem: HELP_PROVIDED_ITEMS.first,
      convertToString: (item) => item,
    ),
    const VerticalPdfMargin(margin: DEFAULT_MARGIN),
    const SmallHeader(smallHeader: PECULIARITIES_GAMING),
    DropdownItem<String>(
      title: CHARACTER_OF_ACTIVITY_TOYS,
      items: CHARACTER_OF_ACTIVITY_TOYS_ITEMS,
      preselectedItem: CHARACTER_OF_ACTIVITY_TOYS_ITEMS.first,
      convertToString: (item) => item,
    ),
    DropdownItem<String>(
      title: INTEREST_IN_TOYS,
      items: INTEREST_IN_TOYS_ITEMS,
      preselectedItem: INTEREST_IN_TOYS_ITEMS.first,
      convertToString: (item) => item,
    ),
    DropdownItem<String>(
      title: FAIRNESS_TOYS,
      items: FAIRNESS_TOYS_ITEMS,
      preselectedItem: FAIRNESS_TOYS_ITEMS.first,
      convertToString: (item) => item,
    ),
    DropdownItem<String>(
      title: USE_STUFF,
      items: USE_STUFF_ITEMS,
      preselectedItem: USE_STUFF_ITEMS.first,
      convertToString: (item) => item,
    ),
    const VerticalPdfMargin(margin: DEFAULT_MARGIN),
    const SmallHeader(smallHeader: ADAPTIVE_ACTIVITY),
    DropdownItem<String>(
      title: SELFCATERING,
      items: SELFCATERING_ITEMS,
      preselectedItem: SELFCATERING_ITEMS.first,
      convertToString: (item) => item,
    ),
    DropdownItem<String>(
      title: COMMUNICATION_SKILLS,
      items: COMMUNICATION_SKILLS_ITEMS,
      preselectedItem: COMMUNICATION_SKILLS_ITEMS.first,
      convertToString: (item) => item,
    ),
    DropdownItem<String>(
      title: CHOOSEN_ACTIVITY,
      items: CHOOSEN_ACTIVITY_ITEMS,
      preselectedItem: CHOOSEN_ACTIVITY_ITEMS.first,
      convertToString: (item) => item,
    ),
    const VerticalPdfMargin(margin: DEFAULT_MARGIN),
    const SmallHeader(smallHeader: LEVEL_OF_SPEC_PREPARATION),
    DropdownItem<String>(
      title: GENERAL_AWARENESS,
      items: GENERAL_AWARENESS_ITEMS,
      preselectedItem: GENERAL_AWARENESS_ITEMS.first,
      convertToString: (item) => item,
    ),
    DropdownItem<String>(
      title: ELEMENTS_OF_MATH,
      items: ELEMENTS_OF_MATH_ITEMS,
      preselectedItem: ELEMENTS_OF_MATH_ITEMS.first,
      convertToString: (item) => item,
    ),
    DropdownItem<String>(
      title: LETTERS_KNOWLEDGE,
      items: LETTERS_KNOWLEDGE_ITEMS,
      preselectedItem: LETTERS_KNOWLEDGE_ITEMS.first,
      convertToString: (item) => item,
    ),
    DropdownItem<String>(
      title: ARTS,
      items: ARTS_ITEMS,
      preselectedItem: ARTS_ITEMS.first,
      convertToString: (item) => item,
    ),
    DropdownItem<String>(
      title: ARTS,
      items: ARTS_ITEMS,
      preselectedItem: ARTS_ITEMS.first,
      convertToString: (item) => item,
    ),
    const VerticalPdfMargin(margin: DEFAULT_MARGIN),
    const Header(header: RESULT_COUNCALER_TEACHER),
    InputFieldWithTitle(
      title: INITIALS_PSYCHO,
    ),
    const VerticalPdfMargin(margin: DEFAULT_MARGIN_SMALL),
    const SmallHeader(smallHeader: EMOTIONAL_SPHER),
    DropdownItem<String>(
      title: CONTACT,
      items: CONTACT_ITEMS,
      preselectedItem: CONTACT_ITEMS.first,
      convertToString: (item) => item,
    ),
    DropdownItem<String>(
      title: EMOTIONS,
      items: EMOTIONS_ITEMS,
      preselectedItem: EMOTIONS_ITEMS.first,
      convertToString: (item) => item,
    ),
    DropdownItem<String>(
      title: EMOTIONS,
      items: EMOTIONS_ITEMS,
      preselectedItem: EMOTIONALFON_ITEMS.first,
      convertToString: (item) => item,
    ),
    const VerticalPdfMargin(margin: DEFAULT_MARGIN),
    const SmallHeader(smallHeader: REACTIONFORPOOCHRENIEIPORICANIE),
    DropdownItem<String>(
      title: REACTIONPOSSHRENIE,
      items: REACTIONPOSSHRENIE_ITEMS,
      preselectedItem: REACTIONPOSSHRENIE_ITEMS.first,
      convertToString: (item) => item,
    ),
    DropdownItem<String>(
      title: REACTIONPORICATIEN,
      items: REACTIONPORICATIEN_ITEMS,
      preselectedItem: REACTIONPORICATIEN_ITEMS.first,
      convertToString: (item) => item,
    ),
    DropdownItem<String>(
      title: SELFESTIMATE,
      items: SELFESTIMATE_ITEMS,
      preselectedItem: SELFESTIMATE_ITEMS.first,
      convertToString: (item) => item,
    ),
    DropdownItem<String>(
      title: CARACTER_SPECIAL,
      items: CARACTER_SPECIAL_ITEMS,
      preselectedItem: CARACTER_SPECIAL_ITEMS.first,
      convertToString: (item) => item,
    ),
    const VerticalPdfMargin(margin: DEFAULT_MARGIN_SMALL),
    const SmallHeader(smallHeader: CONDITION_ACTIVITY),
    DropdownItem<String>(
      title: STATIV_DYNAMIC_COORDINATION,
      items: COORDINATION_ACTIVITY_ITEMS,
      preselectedItem: COORDINATION_ACTIVITY_ITEMS.first,
      convertToString: (item) => item,
    ),
    DropdownItem<String>(
      title: GENERAL_MOTORICA,
      items: GENERAL_MOTORICA_ITEMS,
      preselectedItem: GENERAL_MOTORICA_ITEMS.first,
      convertToString: (item) => item,
    ),
    DropdownItem<String>(
      title: LITTLE_MOTORICA,
      items: LITTLE_MOTORICA_ITEMS,
      preselectedItem: LITTLE_MOTORICA_ITEMS.first,
      convertToString: (item) => item,
    ),
    DropdownItem<String>(
      title: MIMICAL_MOTORICA,
      items: MIMICAL_MOTORICA_ITEMS,
      preselectedItem: MIMICAL_MOTORICA_ITEMS.first,
      convertToString: (item) => item,
    ),
    DropdownItem<String>(
      title: PRIORITY_HAND,
      items: PRIORITY_HAND_ITEMS,
      preselectedItem: PRIORITY_HAND_ITEMS.first,
      convertToString: (item) => item,
    ),
    const VerticalPdfMargin(margin: DEFAULT_MARGIN),
    const Header(header: DEVELOP_QUARIS_ACTIVITY),
    const VerticalPdfMargin(margin: DEFAULT_MARGIN_SMALL),
    const SmallHeader(smallHeader: ATTENTION),
    DropdownItem<String>(
      title: PROIZVOL,
      items: PROIZVOL_ITEMS,
      preselectedItem: PROIZVOL_ITEMS.first,
      convertToString: (item) => item,
    ),
    DropdownItem<String>(
      title: SUSTAINABILITY,
      items: SUSTAINABILITY_ITEMS,
      preselectedItem: SUSTAINABILITY_ITEMS.first,
      convertToString: (item) => item,
    ),
    DropdownItem<String>(
      title: VOLUME,
      items: VOLUME_ITEMS,
      preselectedItem: VOLUME_ITEMS.first,
      convertToString: (item) => item,
    ),
    DropdownItem<String>(
      title: PERCEPTION,
      items: PERCEPTION_ITEMS,
      preselectedItem: PERCEPTION_ITEMS.first,
      convertToString: (item) => item,
    ),
    DropdownItem<String>(
      title: TACTICAL_PERCEPTION,
      items: TACTICAL_PERCEPTION_ITEMS,
      preselectedItem: TACTICAL_PERCEPTION_ITEMS.first,
      convertToString: (item) => item,
    ),
    DropdownItem<String>(
      title: SPACE_PERSEPTION,
      items: SPACE_PERSEPTION_ITEMS,
      preselectedItem: SPACE_PERSEPTION_ITEMS.first,
      convertToString: (item) => item,
    ),
    DropdownItem<String>(
      title: TIME_PERSEPTION,
      items: TIME_PERSEPTION_ITEMS,
      preselectedItem: TIME_PERSEPTION_ITEMS.first,
      convertToString: (item) => item,
    ),
    DropdownItem<String>(
      title: CONSTRUCTIVE_PRACSIS,
      items: CONSTRUCTIVE_PRACSIS_ITEMS,
      preselectedItem: CONSTRUCTIVE_PRACSIS_ITEMS.first,
      convertToString: (item) => item,
    ),
    DropdownItem<String>(
      title: MEMORY,
      items: MEMORY_ITEMS,
      preselectedItem: MEMORY_ITEMS.first,
      convertToString: (item) => item,
    ),
        DropdownItem<String>(
          title: IMAGINATION,
          items: IMAGINATION_ITEMS,
          preselectedItem: IMAGINATION_ITEMS.first,
          convertToString: (item) => item,
        ),
        const VerticalPdfMargin(margin: DEFAULT_MARGIN_SMALL),
        const SmallHeader(smallHeader: THINKING),
        DropdownItem<String>(
          title: ACCEPT_TASK,
          items: ACCEPT_TASK_ITEMS,
          preselectedItem: ACCEPT_TASK_ITEMS.first,
          convertToString: (item) => item,
        ),
        DropdownItem<String>(
          title: MODES_OF_ACTION,
          items: MODES_OF_ACTION_ITEMS,
          preselectedItem: MODES_OF_ACTION_ITEMS.first,
          convertToString: (item) => item,
        ),
        DropdownItem<String>(
          title: FORM_OF_THINK,
          items: FORM_OF_THINK_ITEMS,
          preselectedItem: FORM_OF_THINK_ITEMS.first,
          convertToString: (item) => item,
        ),
        const VerticalPdfMargin(margin: DEFAULT_MARGIN_SMALL),
        const SmallHeader(smallHeader: OPER_OF_THINK),
        DropdownItem<String>(
          title: ANALYS_SYNTES,
          items: ANALYS_SYNTES_ITEMS,
          preselectedItem: ANALYS_SYNTES_ITEMS.first,
          convertToString: (item) => item,
        ),
        





  ]);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: DEFAULT_MARGIN_BIGER, horizontal: DEFAULT_MARGIN),
        child: mainColumn,
      )),
    );
  }

  @override
  Future<List<pw.Widget>> getListPDFWidgets() {
    // TODO: implement getListPDFWidgets
    throw UnimplementedError();
  }
}
