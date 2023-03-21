class Item {
  String? id;
  String? name;
  String? desc;
  double? price;
  String? color;
  String? image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}

final product = [
  Item(
      id: "product1",
      name: "One Pluse Nord CE2 5G",
      desc: "One Pluse",
      price: 24999,
      color: "blue",
      image:
          "https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358__340.jpg")
];
