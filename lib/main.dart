import 'package:dart_basic/screen/home.screen.dart';
import 'package:dart_basic/screen/perant.widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(
          // colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
          // Anda mungkin tidak perlu menggunakan useMaterial3 jika tidak memerlukannya
          // useMaterial3: true,
          ),
      // body: const ParentWidget(),
      home: const HomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _bilanganGenap = 0;
  int _bilanganGanjil = 1;
  int _counter = 0;
  String myNrp = "3122510315";
  String start = "*";
  String currentCharacter = '';

  void _incrementCounter() {
    setState(() {
      if (_counter >= myNrp.length) {
        _counter = 0;
        _bilanganGanjil = 1;
        _bilanganGenap = 0;
        currentCharacter = "";
        start = "";
      } else {
        if (_counter < myNrp.length) {
          currentCharacter += myNrp[_counter];
        }
        _counter++;
        _bilanganGanjil += 2;
        _bilanganGenap += 2;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Bilangan ganjil',
            ),
            Text(
              '$_bilanganGanjil',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Text(
              'Bilangan Genap',
            ),
            Text(
              '$_bilanganGenap',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Text(
              'Nrp',
            ),
            Text(
              currentCharacter,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Text(
              'piramid',
            ),
            Text(
              start,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
