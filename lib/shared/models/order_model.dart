import 'dart:convert';

class OrderModel {
  final String id;
  final String created;
  final String name;
  final double price;
  OrderModel({
    required this.id,
    required this.created,
    required this.name,
    required this.price,
  });

  OrderModel copyWith({
    String? id,
    String? created,
    String? name,
    double? price,
  }) {
    return OrderModel(
      id: id ?? this.id,
      created: created ?? this.created,
      name: name ?? this.name,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'created': created,
      'name': name,
      'price': price,
    };
  }

  factory OrderModel.fromMap(Map<String, dynamic> map) {
    return OrderModel(
      id: map['id'],
      created: map['created'],
      name: map['name'],
      price: double.tryParse(map['price'].toString()) ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderModel.fromJson(String source) =>
      OrderModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'OrderModel(id: $id, created: $created, name: $name, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is OrderModel &&
        other.id == id &&
        other.created == created &&
        other.name == name &&
        other.price == price;
  }

  @override
  int get hashCode {
    return id.hashCode ^ created.hashCode ^ name.hashCode ^ price.hashCode;
  }
}
