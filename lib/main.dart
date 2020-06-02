import 'package:flutter/material.dart';
import 'package:fluttermovie/pages/find.dart';
import 'package:fluttermovie/pages/hot.dart';
import 'package:fluttermovie/pages/me.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Moive'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final _widgetItems = [HotPage(), MoviesPage(), MePage()];

  void _onItemTapped(int index) {
    print("index: $index");

    setState(() {
      _selectedIndex = index;
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.school), title: Text('Hot')),
          BottomNavigationBarItem(icon: Icon(Icons.panorama_fish_eye), title: Text('Find')),
          BottomNavigationBarItem(icon: Icon(Icons.people), title: Text('Me')),
        ],
        currentIndex: 0,
        fixedColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
      body: _widgetItems[_selectedIndex],
    );
  }
}
