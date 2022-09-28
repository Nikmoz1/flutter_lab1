import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;
  String text = "Привіт, натисни на одну із кнопок і подивись на результат";

  void _incrementCounter() {
    setState(() {
      DateTime now = new DateTime.now();
      text = "${now.year.toString()}-${now.month.toString()}-${now.day.toString()}"
      ;
    });
  }
  void _incrementCounte() {
    setState(() {
      text = "22222222!!!!!!"
      ;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text),
            ElevatedButton(
                clipBehavior: Clip.hardEdge,
                onPressed: _incrementCounter,
                child: Text("Date")),
            ElevatedButton(
              clipBehavior: Clip.hardEdge,
              onPressed: _incrementCounte,
              child: Text("Hello"))
          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );

  }
}
