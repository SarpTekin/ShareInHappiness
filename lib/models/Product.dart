class Product {
  final double price;
  final String expirationDate, prName, description, image;

  Product({
    this.price,
    this.image,
    this.expirationDate,
    this.prName,
    this.description,
  });
}

//Demo Products

List<Product> demoProducts = [
  Product(
      price: 2.5,
      image: "assets/images/ps4_console_white_1.png",
      expirationDate: "10/10/2022",
      prName: "Pembe Saç Boyası",
      description: "Sena gibi saçlarınız olması için boya"),
  Product(
      price: 2.5,
      image: "assets/images/sena.png",
      expirationDate: "10/10/2022",
      prName: "Pembe Saç Boyası",
      description: "Sena gibi saçlarınız olması için boya"),
  Product(
      price: 2.5,
      image: "assets/images/sena.png",
      expirationDate: "10/10/2022",
      prName: "Pembe Saç Boyası",
      description: "Sena gibi saçlarınız olması için boya"),
  Product(
      price: 2.5,
      image: "assets/images/sena.png",
      expirationDate: "10/10/2022",
      prName: "Pembe Saç Boyası",
      description: "Sena gibi saçlarınız olması için boya"),
];
