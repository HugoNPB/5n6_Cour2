import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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

  List<int> fibonatchiNumbers = [1,1,2,3,5,8,13,21,34];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: fibonatchiNumbers.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(5),
            height: 80,
            color: Colors.lightBlue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      '${fibonatchiNumbers[index]}',
                    style: TextStyle(),
                  )
                ]
                )
          );
        }
    );
  }
}
