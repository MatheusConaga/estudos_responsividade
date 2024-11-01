import 'package:flutter/material.dart';
import 'package:flutter_web_estudos/orientacao.dart';
import 'package:flutter_web_estudos/regras_layout.dart';
import 'package:flutter_web_estudos/responsividade_media_query.dart';
import 'package:flutter_web_estudos/responsividade_row_column.dart';
import 'package:flutter_web_estudos/responsividade_wrap.dart';

void main (){

  runApp(MaterialApp(
    title: "Flutter Web",
    debugShowCheckedModeBanner: false,
    home: RegrasLayouts(),
  ));

}