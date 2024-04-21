import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pessoa.dart';
import 'package:flutter_application_1/telaResultado.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController textoNome = TextEditingController();
  TextEditingController textoDisciplina = TextEditingController();
  TextEditingController textoNota1 = TextEditingController();
  TextEditingController textoNota2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cálculo de Média"),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Informe o seu nome:"),
              controller: textoNome,
            ),
            TextField(
              decoration:
                  InputDecoration(labelText: "Informe a sua disciplina:"),
              controller: textoDisciplina,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Informe a sua nota 1:"),
              keyboardType: TextInputType.number,
              controller: textoNota1,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Informe a sua nota 2:"),
              keyboardType: TextInputType.number,
              controller: textoNota2,
            ),
            ElevatedButton(
              onPressed: () {
                double nota1 = double.tryParse(textoNota1.text) ?? 0;
                double nota2 = double.tryParse(textoNota2.text) ?? 0;
                Pessoa pessoa = Pessoa(
                  nome: textoNome.text,
                  disciplina: textoDisciplina.text,
                  nota1: nota1,
                  nota2: nota2,
                );
                pessoa.resultado = (nota1 + nota2) / 2;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TelaResultado(),
                    settings: RouteSettings(arguments: pessoa),
                  ),
                );
              },
              child: Text("Calcular Média"),
            ),
          ],
        ),
      ),
    );
  }
}
