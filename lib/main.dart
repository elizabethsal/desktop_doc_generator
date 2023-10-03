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
        ColorScheme.fromSeed(seedColor: Colors.deepPurple.shade400),
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

  late List<TemplateModel> templatesList;


  @override
  void initState() {
    super.initState();

    templatesList = [
      TemplateModel(title: "Template1", id: 1),
      TemplateModel(title: "Template2", id: 2),
      TemplateModel(title: "Template3", id: 3),
      TemplateModel(title: "Template4", id: 4),
    ];
  }

  @override
  Widget build(BuildContext context) {

    List<Widget> templatesWidgets = templatesList.map((dataModel) {
      onTapLocalVariable(int id) {
        print("Clicked template with id: $id");
      }
      TemplateListItem returnValue = TemplateListItem(dataModel: dataModel, onTap:onTapLocalVariable);
      return returnValue;
    }).toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text(widget.title),
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.deepPurple[50],
              child: Column(children: templatesWidgets),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class TemplateListItem extends StatelessWidget {
  const TemplateListItem(
      {super.key, required this.dataModel, required this.onTap});

  final Function(int id) onTap;
  final TemplateModel dataModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap(dataModel.id);
      },
      child: Text(
        dataModel.title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      ),
    );
  }
}

class TemplateModel {
  TemplateModel({required this.title, required this.id});

  String title;
  int id;
}
