import 'package:flutter/material.dart';
import 'package:navegacao/telas/tela_categoria.dart';

void main() {
  runApp(MeuCardapio());
}

class  MeuCardapio extends StatelessWidget {

  @override //subscrever metodo para criar elemento de widget
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cardápio",
      theme: ThemeData( 
        primaryColor: Colors.cyan,
      ),
      home: TelaCategorias(),
      );
  }
}