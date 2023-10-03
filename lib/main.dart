import 'package:desktop_doc_generator/template_one.dart';
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
  @override
  Widget build(BuildContext context) {
    Widget currentScreen = ContentTemplateOne();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.deepPurple[50],
              child: Column(
                children: [
                  TemplateListItem(title: "Template1", onTap: (title) {
                    print("Clicked template $title");
                    //TODO onClick action
                  })
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(color: Colors.white),
          ),
          Expanded(
            child: Container(
              color: Colors.deepPurple[50],
              child: const Column(
                children: [
                  Text(
                    "Template 1",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  )
                ],
              ),
            ),
          ),
           Expanded(flex: 2,
            child: currentScreen,
          )
        ],
      ),
    );
  }
}

class TemplateListItem extends StatelessWidget {
  const TemplateListItem({super.key, required this.onTap, required this.title});

  final Function(String title) onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(title),
      child: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      ),
    );
  }
}
