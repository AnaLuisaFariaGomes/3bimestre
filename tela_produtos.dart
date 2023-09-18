import 'dart:ffi';

import 'package:flutter/material.dart';

import '../models/categorias.dart';

class TelaProdutos extends StatefulWidget{
  final List<Produto> produtosValidos;
  TelaProdutos(this.produtosValidos);

  @override
 State<TelaProdutos> createState() => _TelaProdutosState();
}

class _TelaProdutosState extends State <TelaProdutos> {
  String? tituloCategoria;
  List<Produto>? displayProdutos;

@override
  void didChangeDependencies() {
    final argumentosRota = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final tituloCategoria = argumentosRota ['title']!;
    final categoryId = argumentosRota['id'];
    displayProdutos = widget.produtosValidos.where((produto){
      return produto.categories.contains(categoryId);
    }).toList();
    super.didChangeDependencies();
    }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
appBar: AppBar(title: Text(tituloCategoria!)),
body: ListView.builder(
  
), 
      )
    }



}