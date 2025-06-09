import 'package:flutter/material.dart';

class Ecran1 extends StatefulWidget {
  final String parametre;

  const Ecran1({super.key, required this.parametre});

  @override
  State<Ecran1> createState() => _Ecran1State();
}

class _Ecran1State extends State<Ecran1> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text('NotHome'),
      ),
      body: Center(
        child: Text(widget.parametre),
      ),
    );
  }
}