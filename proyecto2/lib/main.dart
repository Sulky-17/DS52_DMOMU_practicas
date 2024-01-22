import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chess Board',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyChessBoard(),
    );
  }
}

class MyChessBoard extends StatelessWidget {
  const MyChessBoard({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> rows = [];

    for (int i = 0; i < 4; i++) {
      List<Widget> tiles = [];
      for (int j = 0; j < 4; j++) {
        Color tileColor = (i + j) % 2 == 0 ? Colors.black : Colors.purple[800]!;

        tiles.add(
          Container(
            width: 96.0, 
            height: 98.0, 
            color: tileColor,
          ),
        );
      }
      rows.add(
        Row(
          children: tiles,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Tablero de ajedrez bien lol'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: rows,
        ),
      ),
    );
  }
}
