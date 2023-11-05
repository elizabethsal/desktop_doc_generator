import 'package:desktop_doc_generator/template_one/template_one.dart';
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

    return Container(
    color: Theme.of(context).colorScheme.background,
      child: SafeArea(
        child: Scaffold(
          body: Row(
            children: [
              NavigationRail(
                extended: false,
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
              Expanded(
                child: page
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){

            },
            child: const Icon(Icons.download),
          ),
        ),
      ),
    );
  }
}


abstract class TemplateInterface {
  void createDoc();
}
