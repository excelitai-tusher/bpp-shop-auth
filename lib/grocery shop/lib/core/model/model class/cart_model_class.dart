class Cart{
  String? productImageUrl;
  String? productName;
  String? productTypes;
  String? productPrice;

  Cart({this.productImageUrl, this.productName, this.productPrice, this.productTypes});

  static List<Cart> list=[
    Cart(
      productImageUrl: "images1/white packet.png",
      productName: "Broccoli",
      productTypes: "500 gm",
      productPrice: "\$ 2,00.0",
    ),
    Cart(
      productImageUrl: "images1/Yellow packet.png",
      productName: "Broccoli",
      productTypes: "500 gm",
      productPrice: "\$ 2,00.0",
    ),
    Cart(
      productImageUrl: "images1/Yellow Yellow.png",
      productName: "Broccoli",
      productTypes: "500 gm",
      productPrice: "\$ 2,00.0",
    ),
  ];
}

