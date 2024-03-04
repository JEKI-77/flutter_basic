import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key, required this.title});

  final String title;

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _bilanganGenap = 0;
  int _bilanganGanjil = 1;
  int _counter = 0;
  String myNrp = "3122510315";
  var start = "*";

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
        for (var i = 0; i < _counter; i++) {
          start = "";
          for (var j = 0; j <= i; j++) {
            start += "n*";
          }
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
            Column(
              children: [
                Text(
                  start,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
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
