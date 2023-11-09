import 'dart:io';

import 'package:desktop_doc_generator/common/pdf_converter_interface.dart';
import 'package:desktop_doc_generator/resources/const.dart';
import 'package:desktop_doc_generator/template_one/template_one.dart';
import 'package:desktop_doc_generator/template_two/template_two.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart' as pw;
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
  var selectedIndex = 0;

  @override
  Widget build(
    BuildContext context,
  ) {
    Widget page;
    switch (selectedIndex) {
      case 0:
        page = ContentTemplateOne();
        break;
      case 1:
        page = ContentTemplateTwo();
        break;
      default:
        throw UnimplementedError('no templates for $selectedIndex');
    }

    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        color: Theme.of(context).colorScheme.background,
        child: SafeArea(
          child: Scaffold(
            body: Row(
              children: [
            //    Text(AppLocalizations.of(context)!.hello_world),
                NavigationRail(
                  extended: constraints.maxWidth >= 1000,
                  //  extended: false,
                  destinations: const [
                    NavigationRailDestination(
                      icon: Icon(Icons.temple_buddhist),
                      label: Text('Шаблон 1'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.temple_buddhist_outlined),
                      label: Text('Шаблон 2'),
                    ),
                  ],
                  selectedIndex: selectedIndex,
                  onDestinationSelected: (value) {
                    setState(() {
                      selectedIndex = value;
                    });
                  },
                ),
                Expanded(child: page),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () async {
                bool isMobile = Platform.isAndroid || Platform.isIOS;

                List<pw.Widget> widgets =
                    await (page as PdfConverterInterface).getListPDFWidgets();

                pw.Document pdf = pw.Document();

                var pdfPage = pw.MultiPage(
                    build: (pw.Context context) => widgets, maxPages: 100);

                pdf.addPage(pdfPage);

                Directory dir = await getApplicationDocumentsDirectory();
                List<FileSystemEntity> entities = await dir.list().toList();

                entities
                    .where((element) =>
                        element.uri.pathSegments.last.contains(appName))
                    .forEach((element) {
                  element.delete();
                });

                String? path = isMobile
                    ? dir.path
                    : await FilePicker.platform.getDirectoryPath();
                if (path == null) return;

                File file = File(
                    "$path/$appName ${DateFormat(PDF_TITLE_TIMESTAMP).format(DateTime.now())}.pdf");

                await file.create(recursive: true);
                await file.writeAsBytes(await pdf.save());

                if (isMobile) {
                  ShareExtend.share(file.path, "file");
                }
              },
              child: const Icon(Icons.download),
            ),
          ),
        ),
      );
    });
  }
}
