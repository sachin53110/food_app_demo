// ignore_for_file: file_names, non_constant_identifier_names

class Item {
  final int id;
  final String desc;
  final String name;
  final num price;
  final String colors;
  final String image;

  Item({
    required this.id,
    required this.desc,
    required this.name,
    required this.price,
    required this.colors,
    required this.image,
  });
}

class Skill {
  static final items = [
    Item(
        id: 1,
        desc: "jsdf",
        name: "Sachin",
        price: 250,
        colors: "#dfghfx",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5_f-3Npwnj40B6u8O8WmcX8swxRqUS8ncQg&usqp=CAU")
  ];
}
