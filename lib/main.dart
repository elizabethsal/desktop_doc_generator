import 'package:desktop_doc_generator/template_one.dart';
import 'package:desktop_doc_generator/template_two.dart';
import 'package:flutter/material.dart';

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
        colorScheme:
            ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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
  Widget build(BuildContext context) {
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
    (page as TemplateInterface).createDoc();

    return Scaffold(
      body: Row(
        children: [
          SafeArea(
            child: NavigationRail(
              extended: true,
              destinations: const [
                NavigationRailDestination(
                  icon: Icon(Icons.temple_buddhist),
                  label: Text('Template 1'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.temple_buddhist_outlined),
                  label: Text('Template 2'),
                ),
              ],
              selectedIndex: selectedIndex,
              onDestinationSelected: (value) {
                setState(() {
                  selectedIndex = value;
                });
              },
            ),
          ),
          Expanded(
            child: Container(
              color: Theme.of(context).colorScheme.primaryContainer,
              child: page,
            ),
          ),
        ],
      ),
    );
  }
}

abstract class TemplateInterface{
  void createDoc();
}




/* pageFormat: PdfPageFormat.a4,
        build: (pw.Context context){
          return pw.Container(
              child: pw.Column(
              children: [
               pw.Text(
              style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
          textAlign: pw.TextAlign.center,
          HEADER),
          pw.Row(children: [
          pw.Text(style: pw.TextStyle(fontSize: 16), FIOCHILD),
          pw.SizedBox(width: 5),
          pw.SizedBox(
          width: 200 )]),
          pw.Row(children: [
          pw.Text(DATEOFBIRTH),
          pw.Text(
          DateFormat(DATETIME).format(_yearOfBirthChild),
          style: pw.TextStyle(fontSize: 15),
          ),
          ])]));*/
