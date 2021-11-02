import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _selectedIndex = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _selectItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static final List<Widget> _widgetFrames = [
    Column(
      children: <Widget>[
        const Text("Inicio"),
        Card(
          elevation: 10,
          child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [],
              )),
        ),
      ],
    ),
    Column(
      children: const <Widget>[Text("Horario")],
    ),
    Column(
      children: const <Widget>[Text("Mi cuenta")],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectItem,
        currentIndex: _selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.schedule), label: 'Horario'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Cuenta')
        ],
      ),
      body: Center(
        child: _widgetFrames.elementAt(_selectedIndex),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
