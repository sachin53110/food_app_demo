import 'dart:convert';

// ignore_for_file: file_names, non_constant_identifier_names
class Skill {
  static List<Item> items = [];
}

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

  Item copyWith({
    int? id,
    String? desc,
    String? name,
    num? price,
    String? colors,
    String? image,
  }) {
    return Item(
      id: id ?? this.id,
      desc: desc ?? this.desc,
      name: name ?? this.name,
      price: price ?? this.price,
      colors: colors ?? this.colors,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'desc': desc,
      'name': name,
      'price': price,
      'colors': colors,
      'image': image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id']?.toInt() ?? 0,
      desc: map['desc'] ?? '',
      name: map['name'] ?? '',
      price: map['price'] ?? 0,
      colors: map['colors'] ?? '',
      image: map['image'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(id: $id, desc: $desc, name: $name, price: $price, colors: $colors, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Item &&
        other.id == id &&
        other.desc == desc &&
        other.name == name &&
        other.price == price &&
        other.colors == colors &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        desc.hashCode ^
        name.hashCode ^
        price.hashCode ^
        colors.hashCode ^
        image.hashCode;
  }
}
