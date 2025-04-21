import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Layout',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<String> languages = const ['Dart', 'JavaScript', 'PHP', 'C++'];

  @override
  Widget build(BuildContext context) {
    final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      body: SafeArea(
        child: isPortrait ? _buildPortraitLayout() : _buildLandscapeLayout(),
      ),
    );
  }

  Widget _buildPortraitLayout() {
    return Column(
      children: [
        const SizedBox(height: 20),
        const Center(
          child: Text(
            'Cheetah Coding',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 20),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: null, child: Text('BUTTON 1')),
            ElevatedButton(onPressed: null, child: Text('BUTTON 2')),
          ],
        ),
        const SizedBox(height: 20),
        Expanded(
          child: ListView.builder(
            itemCount: languages.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 6),
                child: Container(
                  color: Colors.grey[800],
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    languages[index],
                    style: const TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildLandscapeLayout() {
    return Row(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Cheetah Coding',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ElevatedButton(onPressed: null, child: Text('BUTTON 1')),
              SizedBox(height: 10),
              ElevatedButton(onPressed: null, child: Text('BUTTON 2')),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              _languageTile('Dart'),
              _languageTile('JavaScript'),
              _languageTile('PHP'),
              _languageTile('C++'),
            ],
          ),
        ),
      ],
    );
  }

  static Widget _languageTile(String name) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 6),
      child: Container(
        color: Colors.grey[800],
        padding: const EdgeInsets.all(16),
        child: Text(
          name,
          style: const TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
