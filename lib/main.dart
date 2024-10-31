import 'package:flutter/material.dart';
import 'screens/list_screen.dart';
import 'screens/map_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App with Tabs',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.list), text: "List"),
              Tab(icon: Icon(Icons.map), text: "Map"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListScreen(),
            MapScreen(),
          ],
        ),
      ),
    );
  }
}