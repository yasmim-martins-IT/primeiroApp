import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// runApp --->  a função run app serve para rodar a aplicação

// St--> cria uma tela , toda a tela é a uma classe que possui o metodo construtor

//statefull --> tela dinamica

//stateless --> statico

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //metodo construtor da tela
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // O MaterialApp é uma classe que prove os componentes para a tela
    ) ;
  }
}
