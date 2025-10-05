void main() {
  ItemEstoque itemUm = ItemEstoque("Smartphone", 100);
  ItemEstoque itemDois = ItemEstoque("Notebook", 50);

  List<ItemEstoque> estoque = <ItemEstoque>[itemUm, itemDois];

  for (ItemEstoque item in estoque) {
    print("Produto: ${item.nome}, Quantidade em estoque: ${item.quantidade}");
  }
}

class ItemEstoque {
  String nome;
  int quantidade;

  ItemEstoque(this.nome, this.quantidade);
}
