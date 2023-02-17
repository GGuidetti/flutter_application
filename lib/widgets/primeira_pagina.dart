import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrimeiraPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage do Guidera 2'),
      ),
      body: Center(
          child: Column(
        children: [
          TextField(
            decoration: InputDecoration(label: Text("Nome: "),
            hintText: "Informe seu nome"),
          ),
          ElevatedButton(onPressed: () {}, child: Text("ok"))
        ],
      )),
    );
  }
}
