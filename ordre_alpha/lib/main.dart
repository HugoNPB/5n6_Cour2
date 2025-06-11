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

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Liste Prenoms'),
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

  List<String> names = ['Jean', 'Danik', 'Raph', 'Hugo', 'Ian'];
  List<String> randomized_names = [];

  void _randomizeList() {
    setState(() {
      for (var name in names){
        randomized_names.add(name);
      }

      randomized_names.shuffle();
      verifyWin();
    });
  }

  void _listUp(int i) {
    setState(() {
      String  temp = randomized_names[i];
      if (i != randomized_names.length - 1){
        randomized_names[i] = randomized_names[i + 1];
        randomized_names[i + 1] = temp;
      } else {
        randomized_names[i] = randomized_names[0];
        randomized_names[0] = temp;
      }

      verifyWin();

    });
  }

  void _listDown(int i) {
    setState(() {
      String  temp = randomized_names[i];
      if (i != 0){
        randomized_names[i] = randomized_names[i - 1];
        randomized_names[i - 1] = temp;
      } else {
        randomized_names[i] = randomized_names[randomized_names.length - 1];
        randomized_names[randomized_names.length - 1] = temp;
      }

      verifyWin();

    });
  }

  void verifyWin(){
    bool equals = false;
    for (var i = 0; i < names.length; i++){
      if( randomized_names[i] == names[i]){
        equals = true;
      } else{
        equals = false;
        break;
      }
    }

    if(equals) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Liste Organise!')));
    }
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
            for (var i = 0; i < randomized_names.length; i ++) Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(randomized_names[i]),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(onPressed: () {_listDown(i);}, child: const Icon(Icons.arrow_upward)),
                    OutlinedButton(onPressed: () {_listUp(i);}, child: const Icon(Icons.arrow_downward)),
                  ],
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _randomizeList,
        tooltip: 'Increment',
        child: const Icon(Icons.adjust_rounded),
      ),
    );
  }
}


