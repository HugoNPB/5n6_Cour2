import 'package:flutter/material.dart';
import 'package:liste_nav/Truc.dart';

class Detail extends StatefulWidget {

  final Truc? truc;

  const Detail({super.key, required this.truc});

  @override
  State<StatefulWidget> createState() => _DetailState();
}

class _DetailState extends State<Detail> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text('Detail du Truc ${widget.truc?.id}'),
      ),
      body: Center(
        child: Text(widget.truc!.nom),
      ),
    );
  }
}