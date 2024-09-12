import 'package:clothes_app/model/product_model.dart';
import 'package:flutter/cupertino.dart';

class ProductCategory {
   ProductType type;
  late bool isSelected;
  late IconData icon;

  ProductCategory({
    required this.type,
    this.isSelected = false,
    required this.icon,
  });
}
