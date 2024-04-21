class Pessoa {
  String? nome;
  String? disciplina;
  double? nota1;
  double? nota2;
  double? resultado;

  Pessoa({
    this.nome,
    this.disciplina,
    this.nota1,
    this.nota2,
  }) {
    resultado = calcularMedia();
  }

  double calcularMedia() {
    double n1 = nota1 ?? 0;
    double n2 = nota2 ?? 0;
    return (n1 + n2) / 2;
  }

  String getSituacao() {
    return resultado != null && resultado! >= 7.0
        ? "Você está aprovado!"
        : "Você não está aprovado.";
  }
}
