class Products {
  Products({
      this.id,
      this.productName,
      this.productUrl,
      this.productrating,
      this.productDescription
  });

  var id;
  var productName;
  var productUrl;
  var productrating;
  var productDescription;

  factory Products.fromJson(Map<String, dynamic> json) => Products(
      id: json["id"],
      productName: json["productName"],
      productUrl: json["productUrl"],
      productrating: json["productrating"],
      productDescription: json["productDescription"],
  );
}
