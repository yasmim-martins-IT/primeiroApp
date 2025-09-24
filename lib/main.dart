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

//Widgets Orientadores --> define como a classe filho estará na sua tela cuida da parte do alinhamento como por exemplo (pai : column , pai: row , pai :staci)

// Alinhamento --> para alinhar efetivamente usamos Start/Center/End para colocar nas respectivas posições da tela
// mainAxisAlgment : alinha o eixo principal (eixo principal da coluna : y , eixo principal linha : x)
// CrossAxisAligment : alinha o eixo secundario

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //metodo construtor da tela
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // O MaterialApp é uma classe que prove os componentes para a tela

      //tirando a faixa de debug
      debugShowCheckedModeBanner: false,

      // scaffold separa a tela em partes para criar uuma estrutura , ele consegue fazer em até 3 partes
      home: Scaffold(
        //appBar é a barrinha que fica em cima da tela
        appBar: AppBar(
          title: Text(
            "Hello world",
            style: TextStyle(
              //é a estilização do texto
              fontSize: 50,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
        ),

        //body é o conteudo da página
        body: Column(
          //alinha os container em coluna

          //colocando no centro
          mainAxisAlignment: MainAxisAlignment.center,

          //alinhando o eixo secundario
          crossAxisAlignment: CrossAxisAlignment.end,

          //os childrens é onde vai ficar os nossos container
          children: [
            Container(
              // Container é a caixinha que possui as seguintes propriedades : width e height
              // width: MediaQuery.of(context).size.width * 1.0, coloca 100 da teça
              width: 50,
              height: 50,

              //trocando a cor : para trocar a cor existe duas maneiras
              // Colors.nomeDaCor
              //Color(0XFHexadecimalDaCor)
              

              //colocando borda
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30) ,
                color: const Color.fromARGB(255, 64, 98, 138),

              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.blueGrey,

              child: Center(
                child: Container(width: 20, height: 20,color: Colors.black,),
              ),
            ),
            Container(
              width: 50,
              height: 50,
              color: const Color.fromARGB(255, 31, 73, 94),
            ),

            //criando uma linha que ainda será filha da Column
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(width: 50, height: 50, color: Colors.blueGrey),
                Container(
                  width: 50,
                  height: 50,
                  color: const Color.fromARGB(255, 94, 160, 194),
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: const Color.fromARGB(255, 56, 188, 253),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
