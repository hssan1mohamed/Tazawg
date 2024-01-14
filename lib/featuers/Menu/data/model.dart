class MenuModel {
  final String name;
  final String price;
  final String details;
  final String image;
  final String shopId;

  MenuModel(
      {required this.name,
      required this.price,
      required this.details,
      required this.image,
      required this.shopId});
  factory MenuModel.fromJson(jsonData) {
    return MenuModel(
        name: jsonData['name'],
        price: jsonData['price'],
        details: jsonData['details'],
        image: jsonData['img'],
        shopId: jsonData['shop']);
  }
}
