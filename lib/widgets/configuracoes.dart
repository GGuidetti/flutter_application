import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/primeira_pagina.dart';

class Configuracoes extends StatelessWidget
{

  @override
  Widget build (BuildContext context){
    //Tirando a fitinha de Debug
    //Escolhendo a cor primaria do app
    //Definindo a home page
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aulinha dos cria',
      theme:  ThemeData(primaryColor: Colors.red),
      home:  PrimeiraPagina(),
      );
  }
}