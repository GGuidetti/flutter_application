import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrimeiraPagina extends StatelessWidget {
  @override
  var valorInput;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Definindo o titulo da home
        title: Text('HomePage do Guidera 2'),
      ),
      body: Center(
          child: Column(
        children: [
          TextField(
              //Criando um input com Label e placeholder,
              //que ao ser alterado printa o valor do input no console
              decoration: InputDecoration(
                  label: Text("Nome: "), hintText: "Informe seu nome"),
              onChanged: (valorDigitado) {
                valorInput = valorDigitado;
                print(valorDigitado);
              }),
          //Criando um botão flutuante que ao ser pressionado
          //printa o valor do input no console 
          ElevatedButton(
              onPressed: () {
                print(valorInput);
              },
              child: Text("ok"))
        ],
      )),
    );
  }
}
