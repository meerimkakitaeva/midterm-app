import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  final List<Map<String, String>> mockData = const [
    {"title": "New York", "description": "A bustling metropolis."},
    {"title": "San Francisco", "description": "Home of the iconic Golden Gate."},
    {"title": "Chicago", "description": "Famous for its deep-dish pizza."},
    {"title": "Florida", "description": "Known for its beaches and theme parks."},
    {"title": "Texas", "description": "A land of vast landscapes and BBQ."},
  ];

  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Screen'),
      ),
      body: ListView.builder(
        itemCount: mockData.length,
        itemBuilder: (context, index) {
          final item = mockData[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(item["title"] ?? ""),
              subtitle: Text(item["description"] ?? ""),
              leading: const Icon(Icons.label),
              trailing: const Icon(Icons.arrow_forward),
            ),
          );
        },
      ),
    );
  }
}
