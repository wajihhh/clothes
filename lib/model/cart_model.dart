class CartItem {
  final String id;
  final String name;
  final int quantity;
  final double price;
  final String imgUrl;
  final double priceOff;

  CartItem({
    required this.id,
    required this.name,
    required this.quantity,
    required this.price,
    required this.imgUrl,
    required this.priceOff
  });
}
