import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'APP BART frases aleatórias',
    home: frases(),
  ));
}

class frases extends StatefulWidget {
  const frases({Key? key}) : super(key: key);

  @override
  State<frases> createState() => _frasesState();
}

class _frasesState extends State<frases> {

  var _frases = [
    'Por que a galinha atravessou a rua? Para chegar do outro lado hahahaha.',
    'O que um tijolo falou para outro tijolo? Você é um tijolo mesmo!',
    'Por que a bicicleta caiu? Porque estava cansada.',
    'Eae cara!',
    'Ai caramba!',
    'Não fui eu!',
    'Só resta uma coisa a fazer em momentos assim... Caminhar!',
    'Não se vive de salada',
    'Não tenho culpa se nasci genial e um pouco louco.',
    'Eu não vou tentar nada de novo, porque já fiz tudo o que podia dar errado.',
    'Quem diabos é você?',
    'Eu não sou um garoto mau, eu só fui criado assim.',
    'Por que a banana foi ao médico? Porque ela estava se sentindo descascada!',

  ];

  var _FrasesGerada = 'Gerar frase abaixo';

  void _gerarFrase(){
    var numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _FrasesGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF636363),
      appBar: AppBar(
        title: Text('Frases do Bart do dia'),
        backgroundColor: Colors.orangeAccent,
      ),

      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment:  MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset('image/Bartfrases.png'),
              Text( _FrasesGerada,
              style: TextStyle(
                fontSize: 25,
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),),
              ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.orangeAccent)),
                  onPressed: _gerarFrase,
                  child: Text('Nova Frase',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),)
              )
            ],
          ),
        ),
      ),
    );
  }
}
