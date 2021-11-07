import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  void responder() {
    print('Pergunta respondida!');
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual sua cor favorita?',
      'Qual seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
          centerTitle: true,
        ),
        body: Center (child: Column(
          children: [
            Text(perguntas[0]),
            ElevatedButton(child: Text('Resposta 1'), onPressed: responder),
            ElevatedButton(child: Text('Resposta 2'), onPressed: responder),
            ElevatedButton(child: Text('Resposta 3'), onPressed: () => print('Resposta 3 selecionada!')),
            ElevatedButton(
                child: Text('Resposta 4'),
                onPressed: () {
                  print('Resposta 4!');
                }),
            ],
          ),
        ),
      ),
    );
  }
}
