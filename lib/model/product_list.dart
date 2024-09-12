import 'package:clothes_app/model/product_category_model.dart';
import 'package:clothes_app/model/product_model.dart';
import 'package:flutter/material.dart';

class AppData {

  static const String dummyText = 'Lorem Ipsum is simply dummy text of the printing and typesetting'
      ' industry. Lorem Ipsum has been the industry\'s standard dummy text'
      ' ever since the 1500s, when an unknown printer took a galley of type'
      ' and scrambled it to make a type specimen book.';

  static List<Product> productList = [
    Product(
        name: 'Beats HeadPhones',
        price: 1900,
        id: '1',
        // isAvailable: false,
        imageUrl: [
          'assets/images/beats_studio_3-1.png',
          'assets/images/beats_studio_3-2.png',
          'assets/images/beats_studio_3-3.png',
          'assets/images/beats_studio_3-4.png',
        ],
        isAvailable: false,
        type: ProductType.headphone,
    ),
    Product(
        name: 'Galaxy Watch',
        id: '2',
        price: 2000,
        // isAvailable: true,
        imageUrl: [
          'assets/images/galaxy_watch_4_1.png',
          'assets/images/galaxy_watch_4_2.png',
          'assets/images/galaxy_watch_4_3.png'
        ],
        isAvailable: true,

        type: ProductType.watch),


    Product(
        id: '3',
        name: 'Samsung',
        price: 1000,
        // isAvailable: true,
        imageUrl: [
          'assets/images/samsung_q_60_a_1.png',
          'assets/images/samsung_q_60_a_2.png'
        ],
        isAvailable: true,
        off: 700,

        type: ProductType.tv),
    Product(
        name: 'Sony',
        id: '4',
        price: 1000,
        // isAvailable: true,
        imageUrl: [
          'assets/images/sony_x_80_j_1.png',
          'assets/images/sony_x_80_j_2.png'
        ],
        isAvailable: true,

        type: ProductType.tv),
    Product(
        name: 'Tab',
        id: '5',
        price: 1900,
        // isAvailable: false,
        imageUrl: [
          'assets/images/tab_s7_fe_1.png',
          'assets/images/tab_s7_fe_2.png',
          'assets/images/tab_s7_fe_3.png'
        ],
        isAvailable: true,

        type: ProductType.tablet),
    Product(
        name: 'Mobile',
        id: '6',
        price: 2000,
        // isAvailable: false,
        imageUrl: [
          'assets/images/a53_1.png',
          'assets/images/a53_2.png',
          'assets/images/a53_3.png'
        ],
        isAvailable: true,

        type: ProductType.mobile),
  ];

  static List<ProductCategory> categories = [

    ProductCategory(type: ProductType.all, icon:Icons.all_inclusive,),
    ProductCategory(type: ProductType.tv, icon: Icons.tv),
    ProductCategory(type: ProductType.tablet, icon: Icons.tablet),
    ProductCategory(type: ProductType.mobile, icon: Icons.mobile_screen_share_sharp),
    ProductCategory(type: ProductType.watch, icon: Icons.watch),
    ProductCategory(type: ProductType.headphone, icon: Icons.headphones),
  ];
}

