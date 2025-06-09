import 'package:flutter/material.dart';
import 'package:liste_nav/Detail.dart';
import 'package:liste_nav/Truc.dart';

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

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
      routes: routes(),
    );
  }
}

Map<String, WidgetBuilder> routes() {
  return {
    '/detail': (context) => Detail(truc: null)
  };
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  List<Truc> trucs = [
    new Truc('Test', 0),
    new Truc('Banane', 1),
    new Truc('Porra', 2),
    new Truc('Caralho', 3),
    new Truc('Simples', 4),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text('Home'),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            OutlinedButton(onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Detail(truc: trucs[0])
                  )
              );
              },
                child: Text('Truc ${trucs[0].id + 1}')
            ),
            OutlinedButton(onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Detail(truc: trucs[1])
                  )
              );
            },
                child: Text('Truc ${trucs[1].id + 1}')
            ),
            OutlinedButton(onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Detail(truc: trucs[2])
                  )
              );
            },
                child: Text('Truc ${trucs[2].id + 1}')
            ),
            OutlinedButton(onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Detail(truc: trucs[3])
                  )
              );
            },
                child: Text('Truc ${trucs[3].id + 1}')
            ),
            OutlinedButton(onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Detail(truc: trucs[4])
                  )
              );
            },
                child: Text('Truc ${trucs[4].id + 1}')
            ),
          ],
        ),
      ),
    );
  }
}
