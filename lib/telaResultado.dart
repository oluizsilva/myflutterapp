import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pessoa.dart';

class TelaResultado extends StatelessWidget {
  const TelaResultado({super.key});

  @override
  Widget build(BuildContext context) {
    final Pessoa pessoaCalculada =
        ModalRoute.of(context)!.settings.arguments as Pessoa;
    String situacao = pessoaCalculada.resultado! >= 7.0
        ? "Você está aprovado!"
        : "Você não está aprovado.";

    return Scaffold(
      appBar: AppBar(
        title: Text("Resultado"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Nome do Aluno: ${pessoaCalculada.nome}",
              style: TextStyle(fontSize: 24),
            ),
            Text(
              "Disciplina: ${pessoaCalculada.disciplina}",
              style: TextStyle(fontSize: 24),
            ),
            Text(
              "Média das Notas: ${pessoaCalculada.resultado!.toStringAsFixed(2)}",
              style: TextStyle(fontSize: 24),
            ),
            Text(
              situacao,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
