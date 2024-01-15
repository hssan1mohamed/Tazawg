class CategoryModel {
  final String address;
  final String facebook;
  final String img;
  final String location;
  final String name;
  final String phone;
  final String whatsapp;
  final String type;

  CategoryModel(
      {required this.address,
      required this.facebook,
      required this.img,
      required this.location,
      required this.name,
      required this.phone,
      required this.whatsapp,
      required this.type});

  factory CategoryModel.frfirebase(firebase) {
    return CategoryModel(
        address: firebase['address'],
        facebook: firebase['facebook'],
        img: firebase['img'],
        location: firebase['location'],
        name: firebase['name'],
        phone: firebase['phone'],
        whatsapp: firebase['whatsapp'],
        type: firebase['type']);
  }
}
