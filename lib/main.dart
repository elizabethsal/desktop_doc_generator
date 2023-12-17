import 'dart:io';

import 'package:desktop_doc_generator/common/extensions.dart';
import 'package:desktop_doc_generator/common/pdf_converter_interface.dart';
import 'package:desktop_doc_generator/resources/const.dart';
import 'package:desktop_doc_generator/template_one/template_one.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:share_extend/share_extend.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: "NotoSerif",
      ),
      home: const MyHomePage(title: appName),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(
    BuildContext context,
  ) {
    var page = ContentTemplateOne();
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        color: Theme.of(context).colorScheme.background,
        child: SafeArea(
          child: Scaffold(
            body: page,
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) => BottomSheetBody(
                          onShareAction: () =>
                              saveOrSharePage(page),
                          onPrintAction: () =>
                              printPage(page),
                        ));
              },
              child: const Icon(Icons.add),
            ),
          ),
        ),
      );
    });
  }

  void saveOrSharePage(PdfConverterInterface pdfReadyWidget) async {
    bool isMobile = Platform.isAndroid || Platform.isIOS;

    var pdf = await convertToPdf(pdfReadyWidget);
    var dir = await getEmptyDir();

    String? path =
        isMobile ? dir.path : await FilePicker.platform.getDirectoryPath();
    if (path == null) return;

    File file = File(
        "$path/$appName ${DateFormat(PDF_TITLE_TIMESTAMP).format(DateTime.now())}.pdf");

    await file.create(recursive: true);
    await file.writeAsBytes(await pdf.save());

    if (isMobile) {
      ShareExtend.share(file.path, "file");
    }
  }

  void printPage(PdfConverterInterface pdfReadyWidget) async {
    var pdf = await convertToPdf(pdfReadyWidget);
    Printing.layoutPdf(onLayout: (PdfPageFormat format) async => pdf.save());
  }

  Future<pw.Document> convertToPdf(PdfConverterInterface pdfReadyWidget) async {
    List<pw.Widget> widgets = await pdfReadyWidget.getListPDFWidgets();

    pw.Document pdf = pw.Document();

    var pdfPage =
        pw.MultiPage(build: (pw.Context context) => widgets, maxPages: 100);

    pdf.addPage(pdfPage);

    return pdf;
  }

  Future<Directory> getEmptyDir() async {
    Directory dir = await getApplicationDocumentsDirectory();
    List<FileSystemEntity> entities = await dir.list().toList();

    entities
        .where((element) => element.uri.pathSegments.last.contains(appName))
        .forEach((element) {
      element.delete();
    });
    return dir;
  }
}

Widget getNumberedNavigationIcon(BuildContext context, int number) {
  return Stack(
    alignment: Alignment.center,
    children: [
      const Icon(Icons.edit_document),
      Text(
        number.toString(),
        style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
          shadows: <Shadow>[
            Shadow(
              offset: Offset(0.0, 0.0),
              blurRadius: 5.0,
              color: Colors.black,
            ),
          ],
        ),
      ),
    ],
  );
}

class BottomSheetBody extends StatelessWidget {
  const BottomSheetBody(
      {super.key, required this.onShareAction, required this.onPrintAction});

  final Function() onShareAction;
  final Function() onPrintAction;

  @override
  Widget build(BuildContext context) {
    bool isMobile = Platform.isIOS || Platform.isAndroid;

    List<Widget> buttons = [
      BottomSheetElement(
        title: isMobile ? AppLocalizations.of(context)!.share : AppLocalizations.of(context)!.save,
        onClickAction: () {
          onShareAction();
          Navigator.of(context).pop();
        },
        icon: Icon(isMobile
            ? Icons.share
            : Icons.download),
      ),
      BottomSheetElement(
        title: AppLocalizations.of(context)!.print,
        onClickAction: () {
          onPrintAction();
          Navigator.of(context).pop();
        },
        icon: const Icon(Icons.print),
      ),
    ];

    Radius defaultRadius = const Radius.circular(DEFAULT_RADIUS);

    return SizedBox(
      width: double.maxFinite,
      height: LIST_ELEMENT_HEIGHT * 2.0 + DEFAULT_MARGIN + MediaQuery.of(context).padding.bottom,
      child: Column(
        children: [
          ...buttons,
          const SizedBox(height: DEFAULT_MARGIN)
        ],

      ),
    ).wrapInRadiusRectangle(Theme.of(context).colorScheme.background,
        BorderRadius.only(topLeft: defaultRadius, topRight: defaultRadius));
  }
}

class BottomSheetElement extends StatelessWidget {
  final Icon icon;
  final String title;
  final Function() onClickAction;

  const BottomSheetElement(
      {super.key,
      required this.icon,
      required this.title,
      required this.onClickAction});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: LIST_ELEMENT_HEIGHT,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(width: DEFAULT_MARGIN_SMALER),
            Text(title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ),
    ).setOnClickListener(() => onClickAction());
  }
}
