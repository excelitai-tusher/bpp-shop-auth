class PopularModel{
  String? productImageUrl;
  String? productName;
  String? productQuantity;
  String? productPrice;

  PopularModel({this.productImageUrl,this.productName,this.productQuantity,this.productPrice});

  static List<PopularModel> list=[
    PopularModel(
      productImageUrl: "images/grocery/p4.jpg",
      productName: "Maggi Noodles (Family Pack)",
      productQuantity: "2 Packets",
      productPrice: "\$ 230.0",
    ),
    PopularModel(
      productImageUrl: "images/grocery/p5.jpg",
      productName: "Maggi Noodles (Family Pack)",
      productQuantity: "2 Packets",
      productPrice: "\$ 230.0",//

    ),
    PopularModel(
      productImageUrl: "images/grocery/p3.png",
      productName: "Maggi Noodles (Family Pack)",
      productQuantity: "2 Packets",
      productPrice: "\$ 230.0",
    ),
  ];
}