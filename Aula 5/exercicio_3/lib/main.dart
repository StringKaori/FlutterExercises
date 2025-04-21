import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercício ThemeData',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue, // fundo global azul
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Widget com o tema global (azul)
          Container(
            width: 100,
            height: 100,
            color: Theme.of(context).scaffoldBackgroundColor,
            alignment: Alignment.center,
            child: const Text(
              'Widget',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),

          // Theme sobrescrito localmente (amarelo)
          Theme(
            data: ThemeData(
              scaffoldBackgroundColor: Colors.yellow,
            ),
            child: Builder(
              builder: (context) {
                return Container(
                  width: 100,
                  height: 100,
                  color: Theme.of(context).scaffoldBackgroundColor,
                  alignment: Alignment.center,
                  child: const Text(
                    'Widget',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
