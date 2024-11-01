import 'package:flutter/material.dart';
import 'screens/list_screen.dart';
import 'screens/map_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App with Tabs',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Midterm App'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.list), text: "List"),
              Tab(icon: Icon(Icons.map), text: "Map"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ListScreen(),
            MapScreen(),
          ],
        ),
      ),
    );
  }
}
