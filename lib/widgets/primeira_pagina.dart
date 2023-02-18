import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrimeiraPagina extends StatelessWidget {
  @override
  var valor1 = 0.0;
  var valor2 = 0.0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Definindo o titulo da home
        title: Text('Calculadora do Guidera 3000'),
      ),
      body: Center(
          child: Column(
        children: [
          TextField(
              //Criando um input com Label e placeholder,
              //que ao ser alterado printa o valor do input no console
              decoration: InputDecoration(
                  label: Text("Valor 1: "), hintText: "Informe o primeiro valor"),
              onChanged: (primeiroValor) {
                valor1 = double.parse(primeiroValor);
                print(primeiroValor);
              }),
              TextField(
              //Criando um input com Label e placeholder,
              //que ao ser alterado printa o valor do input no console
              decoration: InputDecoration(
                  label: Text("Valor 2: "),
                  hintText: "Informe o segundo valor"),
              onChanged: (segundoValor) {
                valor2 = double.parse(segundoValor);
                print(segundoValor);
              }),
          //Criando um botão flutuante que ao ser pressionado
          //printa o valor do input no console
          ElevatedButton(
              onPressed: () {
                var mult = valor1 * valor2;
                showDialog(
                    context: context,          
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Resultado: '),
                        content: Text("$mult"),
                      );
                    });
              },
              child: Text("Multiplicar")),
              ElevatedButton(
              onPressed: () {
                var div = valor1 / valor2;
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Resultado: '),
                        content: Text("$div"),
                      );
                    });
              },
              child: Text("Dividir"))
        ],
      )),
    );
  }
}
