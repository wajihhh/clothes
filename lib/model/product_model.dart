import 'package:clothes_app/model/product_list.dart';

enum ProductType { all, watch, mobile, headphone, tablet, tv }

class Product {
  late String name;
  final String id;
  late double? off;
  late double price;
  String about;
  ProductType type;
  bool isAvailable;

  // bool isFav;

  late List<String> imageUrl;

  // int get quantity => _quantity;

  // set quantity(int newQuantity) {
  //   if (newQuantity >= 0) _quantity = newQuantity;
  // }

  Product({
    this.about = AppData.dummyText,
    required this.isAvailable,
    required this.name,
    required this.price,
    required this.id,
    required this.type,
    // required this.isFav,
    required this.imageUrl,
    this.off,
  });
}
