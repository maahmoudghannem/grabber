class Products {
  String? rate;
  String? price;
  String? rateCount;
  final String image;
  final String name;

  Products({
    this.price,
    this.rateCount,
    this.rate,
    required this.name,
    required this.image,
  });
}
