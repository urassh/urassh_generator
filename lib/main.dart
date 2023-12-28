import 'package:flutter/material.dart';
import 'Sample.dart';
import 'DataModel/Greeting.dart';
import 'DataModel/Verb.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'うらっしゅの挨拶GENERATOR',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'うらっしゅの挨拶GENERATOR'),
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
  final Sample _samples = Sample();
  List<bool> showingState = [false, false, false, false];
  int showedIndex = 0;
  bool isInit = true;
  Verb _verb_1 = Verb(content: '');
  Verb _verb_2 = Verb(content: '');
  Greeting _greeting_1 = Greeting(content: '');
  Greeting _greeting_2 = Greeting(content: '');

  void _changeWords() {
    setState(() {
      if (showedIndex == showingState.length) {
        _reset();
        return;
      }

      if (isInit) {
        _initalSet();
      }

      isInit = false;
      showingState[showedIndex] = true;
      showedIndex += 1;
    });
  }

  void _initalSet() {
    _verb_1 = _samples.verb();
    _verb_2 = _samples.verb();
    _greeting_1 = _samples.greeting();
    _greeting_2 = _samples.greeting();
  }

  void _reset() {
    for(int i=0; i < showingState.length; i++) {
      showingState[i] = false;
    }
    showedIndex = 0;
    isInit = true;
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
            const Text('こんにちは!!'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  color: Colors.cyan,
                  width: 120,
                  height: 80,
                  margin: const EdgeInsets.all(6.0),
                  padding: const EdgeInsets.all(12.0),
                  child: Text(showingState[0] ? _verb_1.content : ''),
                ),
                Container(
                  color: Colors.blue,
                  width: 120,
                  height: 80,
                    margin: const EdgeInsets.all(6.0),
                    padding: const EdgeInsets.all(12.0),
                  child: Text(showingState[1] ? _greeting_1.content : '')
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  color: Colors.cyan,
                  width: 120,
                  height: 80,
                  margin: const EdgeInsets.all(6.0),
                  padding: const EdgeInsets.all(12.0),
                  child: Text(showingState[2] ? _verb_2.content : ''),
                ),
                Container(
                    color: Colors.blue,
                    width: 120,
                    height: 80,
                    margin: const EdgeInsets.all(6.0),
                    padding: const EdgeInsets.all(12.0),
                    child: Text(showingState[3] ? _greeting_2.content : '')
                ),
              ],
            ),
            const Text('どうもうらっしゅです!!'),

            ElevatedButton(onPressed: (){
              _changeWords();
            }, child: const Text('Change!'))
          ],
        ),
      ),
    );
  }
}
