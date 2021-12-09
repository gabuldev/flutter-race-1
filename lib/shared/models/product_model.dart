import 'dart:convert';

class ProductModel {
  final String name;
  final double lastPrice;
  final double currentPrice;
  ProductModel({
    required this.name,
    required this.lastPrice,
    required this.currentPrice,
  });

  ProductModel copyWith({
    String? name,
    double? lastPrice,
    double? currentPrice,
  }) {
    return ProductModel(
      name: name ?? this.name,
      lastPrice: lastPrice ?? this.lastPrice,
      currentPrice: currentPrice ?? this.currentPrice,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'lastPrice': lastPrice,
      'currentPrice': currentPrice,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      name: map['name'],
      lastPrice: map['lastPrice'],
      currentPrice: map['currentPrice'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'ProductModel(name: $name, lastPrice: $lastPrice, currentPrice: $currentPrice)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProductModel &&
        other.name == name &&
        other.lastPrice == lastPrice &&
        other.currentPrice == currentPrice;
  }

  @override
  int get hashCode =>
      name.hashCode ^ lastPrice.hashCode ^ currentPrice.hashCode;
}
