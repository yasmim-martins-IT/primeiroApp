import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//COMANDO PARA RODAR O APLICATIVO : flutter run

//--------------------------------------------------------------------------------------------------------------------------

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

      // scaffold separa a tela em partes para criar uuma estrutura , ele consegue fazer em até 3 partes

      home: Scaffold(

        //appBar é a barrinha que fica em cima da tela
        appBar: AppBar(title:Text("Hello world") , backgroundColor: Colors.blueAccent, ) ,

        //body é o conteudo da página

        body: Container(

          // Container é a caixinha que possui as seguintes propriedades : width e height
          width: 50,
          height: 50,

          //trocando a cor : para trocar a cor existe duas maneiras
          // Colors.nomeDaCor
          //Color(0XFHexadecimalDaCor)

          color: Colors.white,
        ),

      )
    ) ;
  }
}
