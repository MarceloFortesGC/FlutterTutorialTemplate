// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TutorialCoachMark Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late TutorialCoachMark tutorialCoachMark;

  GlobalKey keyButton = GlobalKey();
  GlobalKey keyButton1 = GlobalKey();
  GlobalKey keyButton2 = GlobalKey();
  GlobalKey keyButton3 = GlobalKey();
  GlobalKey keyButton4 = GlobalKey();
  GlobalKey keyButton5 = GlobalKey();

  GlobalKey keyBottomNavigation1 = GlobalKey();
  GlobalKey keyBottomNavigation2 = GlobalKey();
  GlobalKey keyBottomNavigation3 = GlobalKey();

  @override
  void initState() {
    createTutorial();
    Future.delayed(Duration.zero, showTutorial);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            // key: keyButton1,
            icon: const Icon(Icons.add),
            onPressed: () {},
          ),
          PopupMenuButton(
            key: keyButton1,
            icon: const Icon(Icons.view_list, color: Colors.white),
            itemBuilder: (context) => const [
              PopupMenuItem(
                child: Text("Is this"),
              ),
              PopupMenuItem(
                child: Text("What"),
              ),
              PopupMenuItem(
                child: Text("You Want?"),
              ),
            ],
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  key: keyButton,
                  color: Colors.blue,
                  height: 100,
                  width: MediaQuery.of(context).size.width - 50,
                  child: Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      child: const Icon(Icons.remove_red_eye),
                      onPressed: () {
                        showTutorial();
                      },
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 50,
                height: 50,
                child: ElevatedButton(
                  key: keyButton2,
                  onPressed: () {},
                  child: Container(),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: ElevatedButton(
                    key: keyButton3,
                    onPressed: () {},
                    child: Container(),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: ElevatedButton(
                    key: keyButton4,
                    onPressed: () {},
                    child: Container(),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: ElevatedButton(
                    key: keyButton5,
                    onPressed: () {},
                    child: Container(),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Stack(
        children: [
          SizedBox(
            height: 50,
            child: Row(
              children: [
                Expanded(
                    child: Center(
                  child: SizedBox(
                    key: keyBottomNavigation1,
                    height: 40,
                    width: 40,
                  ),
                )),
                Expanded(
                    child: Center(
                  child: SizedBox(
                    key: keyBottomNavigation2,
                    height: 40,
                    width: 40,
                  ),
                )),
                Expanded(
                  child: Center(
                    child: SizedBox(
                      key: keyBottomNavigation3,
                      height: 40,
                      width: 40,
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.business),
                label: 'Business',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: 'School',
              ),
            ],
            // currentIndex: _selectedIndex,
            selectedItemColor: Colors.amber[800],
            onTap: (index) {},
          ),
        ],
      ),
    );
  }

  void showTutorial() {
    tutorialCoachMark.show(context: context);
  }

  void createTutorial() {
    tutorialCoachMark = TutorialCoachMark(
      targets: _createTargets(),
      textSkip: "PULAR",
      paddingFocus: 10,
      opacityShadow: 0.8,
    );
  }

  List<TargetFocus> _createTargets() {
    List<TargetFocus> targets = [];
    targets.add(
      targetStep(keyBottomNavigation1, skipPosition: Alignment.topRight, [
        targetContent(ContentAlign.top, const [
          Text(
            "TÍTULO",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            "Teste 1",
            style: TextStyle(
              color: Colors.white,
            ),
          )
        ]),
        targetContent(ContentAlign.top, [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text(
                    "DIREITA",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Direita 1.1",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          )
        ])
      ]),
    );

    targets.add(
      targetStep(keyBottomNavigation2, skipPosition: Alignment.topRight, [
        targetContent(ContentAlign.top, const [
          Text(
            "TÍTULO",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            "Teste 2",
            style: TextStyle(
              color: Colors.white,
            ),
          )
        ])
      ]),
    );

    targets.add(
      targetStep(keyBottomNavigation3, skipPosition: Alignment.topRight, [
        targetContent(ContentAlign.top, const [
          Text(
            "TÍTULO",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            "Teste 3",
            style: TextStyle(
              color: Colors.white,
            ),
          )
        ])
      ]),
    );

    targets.add(
      targetStep(keyButton1, [
        targetContent(ContentAlign.bottom, const [
          Text(
            "TÍTULO",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            "TARGET 0",
            style: TextStyle(
              color: Colors.white,
            ),
          )
        ])
      ]),
    );

    return targets;
  }

  TargetFocus targetStep(
    GlobalKey key,
    List<TargetContent> content, {
    Color? color,
    Alignment? skipPosition,
  }) {
    return TargetFocus(
      identify: key.toString(),
      keyTarget: key,
      color: color ?? Colors.blue,
      alignSkip: skipPosition ?? Alignment.bottomRight,
      contents: content,
    );
  }

  TargetContent targetContent(
      ContentAlign contentPosition, List<Widget> content) {
    return TargetContent(
      // Se o componente estiver:
      // - Embaixo: ContentAlign.top
      // - Em cima ContentAlign.bottom
      align: contentPosition,
      builder: (context, controller) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: content,
        );
      },
    );
  }
}
