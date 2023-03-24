//19k1478 Sachal Raja Om Kumar Aisha Naoman Smd Assignment3 for Gmail GUI

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gmail Inbox',
      theme: ThemeData(primaryColor: Colors.green),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<String> _emails = [
    'Email 1',
    'Email 2',
    'Email 3',
    'Email 4',
    'Email 5',
    'Email 6',
    'Email 7',
    'Email 8',
    'Email 9',
    'Email 10',
  ];

  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gmail Inbox'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // ignore: todo
              // TODO: Implement search functionality
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'Search mail',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _emails.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: const CircleAvatar(
                    child: Text('A'),
                  ),
                  title: Text(_emails[index]),
                  subtitle: const Text('Text of Email goes here'),
                  trailing: const Icon(Icons.star_border),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
