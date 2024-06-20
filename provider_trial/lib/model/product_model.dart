class ProductProvider {
  String? url;
  String? prodName;
  String? price;
  bool isFavorite;
  int count;

  ProductProvider({
    this.count = 0,
    this.isFavorite = false,
    this.price,
    this.prodName,
    this.url,
  });
}
