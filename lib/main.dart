import 'dart:io';

import 'package:desktop_doc_generator/common/pdf_converter_interface.dart';
import 'package:desktop_doc_generator/resources/const.dart';
import 'package:desktop_doc_generator/template_one/template_one.dart';
import 'package:desktop_doc_generator/template_two.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
    String appTitle = 'Doc Generator';
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(title: appTitle),
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
                List<pw.Widget> widgets = await (page as PdfConverterInterface).getListPDFWidgets();

                pw.Document pdf = pw.Document();

                pdf.addPage(pw.Page(
                  build: (pw.Context context) => pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: widgets),
                ));

                Directory dir = await getApplicationDocumentsDirectory();
                List<FileSystemEntity> entities = await dir.list().toList();

                String namePrefix = appName;

                entities
                    .where((element) =>
                        element.uri.pathSegments.last.contains(namePrefix))
                    .forEach((element) {
                  element.delete();
                });

                File file = File(
                    "${dir.path}/$appName${DateFormat(PDF_TITLE_TIMESTAMP).format(DateTime.now())}.pdf");

                await file.create(recursive: true);
                await file.writeAsBytes(await pdf.save());

                if (Platform.isAndroid || Platform.isIOS) {
                  ShareExtend.share(file.path, "file");
                } else {
                  //TODO desktop file saving
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
