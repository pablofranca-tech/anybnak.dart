void main() {
  Receita itemUm = Receita("Macarrão ao pesto", 20.00);
  Receita itemDois = Receita("Lasanha 4 queijos", 32.00);
  Receita itemTres = Receita("Burrata com pesto", 28.00);

  List<Receita> receitas = <Receita>[itemUm, itemDois, itemTres];

  for (Receita receita in receitas) {
    print(receita.nome);
    print(receita.preco);
  }
}

class Receita {
  String nome;
  double preco;

  Receita(this.nome, this.preco);
}
