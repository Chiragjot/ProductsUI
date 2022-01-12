class Products {
  Products({
      this.id,
      this.productName,
      this.productUrl,
      this.productrating,
      this.productDescription,
      this.productPrice
  });

  var id;
  var productName;
  var productUrl;
  var productrating;
  var productDescription;
  var productPrice;

  factory Products.fromJson(Map<String, dynamic> json) => Products(
      id: json["id"],
      productName: json["productName"],
      productUrl: json["productUrl"],
      productrating: json["productrating"],
      productDescription: json["productDescription"],
      productPrice: json["productPrice"],
  );
}
