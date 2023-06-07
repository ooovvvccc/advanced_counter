import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;
  bool _isEven = false;

  void _incrementCounter() {
    setState(() {
      _counter++;
      _isEven = _counter % 2 == 0;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
      _isEven = _counter % 2 == 0;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
      _isEven = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Counter:',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              '$_counter',
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text('Increment'),
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: _decrementCounter,
              child: Text('Decrement'),
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: _resetCounter,
              child: Text('Reset'),
            ),
            SizedBox(height: 24),
            Text(
              _isEven ? 'Counter is Even' : 'Counter is Odd',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 24),
            AnimatedContainer(
              width: _isEven ? 200 : 100,
              height: _isEven ? 200 : 100,
              color: _isEven ? Colors.blue : Colors.red,
              duration: Duration(milliseconds: 500),
              child: Center(
                child: Text(
                  _isEven ? 'Even Container' : 'Odd Container',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}