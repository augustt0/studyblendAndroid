import 'package:flutter/material.dart';

import './Panel.dart';
import './Horarios.dart';
import './Tareas.dart';

//lol

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int _selectedPage = 0;
  final _pageOptions = [
    PanelPage(),
    HorariosPage(),
    TareasPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "StudyBlend",
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'FredokaOne'
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("StudyBlend"),),
        body: _pageOptions[_selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedPage,
          onTap: (int index){
            setState(() {
              _selectedPage = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              title: Text("Panel", style: TextStyle(fontFamily: 'FredokaOne'))
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.schedule),
                title: Text("Horarios", style: TextStyle(fontFamily: 'FredokaOne'))
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.school),
                title: Text("Panel", style: TextStyle(fontFamily: 'FredokaOne'))
            )
          ],
        ),
      ),
    );
  }

}
