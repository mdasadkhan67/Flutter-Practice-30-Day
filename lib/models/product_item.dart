// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CatalogPoductItems {
  static List<ProductItem> productItem = [];
}

class ProductItem {
  final int id;
  final String name;
  final String desc;
  final int price;
  final String color;
  final String img;
  ProductItem({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.img,
  });

  ProductItem copyWith({
    int? id,
    String? name,
    String? desc,
    int? price,
    String? color,
    String? img,
  }) {
    return ProductItem(
      id: id ?? this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      price: price ?? this.price,
      color: color ?? this.color,
      img: img ?? this.img,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'desc': desc,
      'price': price,
      'color': color,
      'img': img,
    };
  }

  factory ProductItem.fromMap(Map<String, dynamic> map) {
    return ProductItem(
      id: map['id'] as int,
      name: map['name'] as String,
      desc: map['desc'] as String,
      price: map['price'] as int,
      color: map['color'] as String,
      img: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductItem.fromJson(String source) =>
      ProductItem.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProductItem(id: $id, name: $name, desc: $desc, price: $price, color: $color, img: $img)';
  }

  @override
  bool operator ==(covariant ProductItem other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.desc == desc &&
        other.price == price &&
        other.color == color &&
        other.img == img;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        desc.hashCode ^
        price.hashCode ^
        color.hashCode ^
        img.hashCode;
  }
}
