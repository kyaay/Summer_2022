class CartUpdate {
  int? userId;
  DateTime? date;
  List<dynamic>? products;

  CartUpdate({
    this.userId,
    this.date,
    this.products,
  });

  Map<String, dynamic> toJson() {
    return {
      "userId": userId,
      "date": date == null ? null : date!.toIso8601String(),
      "products": products,
    };
  }

  factory CartUpdate.fromJson(Map<String, dynamic> json) {
    return CartUpdate(
      userId: json['userId'],
      date: DateTime.parse(json['date']),
      products: json['products'],
    );
  }
}
