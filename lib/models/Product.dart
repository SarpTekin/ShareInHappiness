class Product {
  final double price;
  final int quantity;
  final String expirationDate, prName, description;

  Product({
    this.price,
    this.quantity,
    this.expirationDate,
    this.prName,
    this.description,
  });
}

//Demo Products

List<Product> demoProducts = [
  Product(
      price: 2.5,
      quantity: 5,
      expirationDate: "10/10/2022",
      prName: "Pembe Saç Boyası",
      description: "Sena gibi saçlarınız olması için boya"),
  Product(
      price: 2.5,
      quantity: 5,
      expirationDate: "10/10/2022",
      prName: "Pembe Saç Boyası",
      description: "Sena gibi saçlarınız olması için boya"),
  Product(
      price: 2.5,
      quantity: 5,
      expirationDate: "10/10/2022",
      prName: "Pembe Saç Boyası",
      description: "Sena gibi saçlarınız olması için boya"),
  Product(
      price: 2.5,
      quantity: 5,
      expirationDate: "10/10/2022",
      prName: "Pembe Saç Boyası",
      description: "Sena gibi saçlarınız olması için boya"),
];
