import 'package:shareinhappiness/models/Product.dart';

class MedicalMarket {
  final String mName, address, phoneNum;
  final List<Product> stocks;
  final List<String> images;

  MedicalMarket({
    this.images,
    this.mName,
    this.address,
    this.phoneNum,
    this.stocks,
  });
}

//Demo Markets

List<MedicalMarket> demoMarkets = [
  MedicalMarket(
      images: [
        "assets/images/sena.png",
        "assets/images/sena.png",
        "assets/images/sena.png",
      ],
      mName: "Sena Market",
      address: "Sena'nın evi",
      phoneNum: "123242342",
      stocks: [demoProducts[0], demoProducts[1], demoProducts[2]]),
  MedicalMarket(
      images: [
        "assets/images/sena.png",
        "assets/images/sena.png",
        "assets/images/sena.png",
      ],
      mName: "Sena Market",
      address: "Sena'nın evi",
      phoneNum: "123242342",
      stocks: [demoProducts[0], demoProducts[1], demoProducts[2]]),
  MedicalMarket(
      images: [
        "assets/images/sena.png",
        "assets/images/sena.png",
        "assets/images/sena.png",
      ],
      mName: "Sena Market",
      address: "Sena'nın evi",
      phoneNum: "123242342",
      stocks: [demoProducts[0], demoProducts[1], demoProducts[2]]),
];
