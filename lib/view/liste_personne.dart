import 'package:flutter/material.dart';


class ListPersonne extends StatefulWidget {
  String passeword;
  ListPersonne({Key? key, required String this.passeword}) : super(key: key);

  @override
  State<ListPersonne> createState() => _ListPersonneState();
}

class _ListPersonneState extends State<ListPersonne> {
  @override
  Widget build(BuildContext context) {
    return  Center(child: Text("${widget.passeword}"));
    /// Dans Text on peut choisir style: TextStyle(widget) : colo :( créer des variable pour afficher couleur pour journé ou soi )
  }
}
