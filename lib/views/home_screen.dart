// // import 'package:clothes_app/widgets/product_card.dart';
// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// //
// // import '../controller/category_controller.dart';
// //
// // class HomeScreen extends StatelessWidget {
// //   final List<String> catList = [
// //     'All',
// //     'Best Selling',
// //     'Jackets',
// //     'Shirts',
// //     'Pants',
// //     'Bags'
// //   ];
// //
// //   List imgList = [
// //     'KSRR24-017_1_bae72430-7a04-4a09-9d31-883fd567917f_1800x1800',
// //     'KSRR24-017_4_115dc58f-29b3-4ff0-9cea-ab3e055abaf8_1800x1800',
// //     'Warm Jacket',
// //     'Black T-Shirt',
// //     'Black Pant',
// //     'Ladies Bag',
// //   ];
// //   int selectedIndex = -1;
// //
// //   HomeScreen({super.key});
// //   final CategoryController categoryController = Get.put(CategoryController());
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: SingleChildScrollView(
// //         child: SafeArea(
// //           child: Padding(
// //             padding: const EdgeInsets.only(top: 20.0, left: 15),
// //             child: Column(
// //               mainAxisAlignment: MainAxisAlignment.start,
// //               children: [
// //                 Padding(
// //                   padding: const EdgeInsets.only(left: 10, right: 10),
// //                   child: Row(
// //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                     children: [
// //                       Container(
// //                         width: MediaQuery.of(context).size.width / 1.5,
// //                         decoration: BoxDecoration(
// //                             color: Color(0xffE1BEBEFF),
// //                             borderRadius: BorderRadius.circular(20)),
// //                         child: TextFormField(
// //                           decoration: InputDecoration(
// //                               label: Text('Find Your Product'),
// //                               border: InputBorder.none,
// //                               prefixIcon: Icon(Icons.search)),
// //                         ),
// //                       ),
// //                       Container(
// //                         padding: EdgeInsets.all(15),
// //                         decoration: BoxDecoration(
// //                             color: Color(0xffE1BEBEFF),
// //                             borderRadius: BorderRadius.circular(20)),
// //                         child: Icon(
// //                           Icons.notifications_none,
// //                           size: 30,
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //                 Container(
// //                   margin: EdgeInsets.only(right: 20, left: 20),
// //                   alignment: Alignment.center,
// //                   child: ClipRRect(
// //                     borderRadius: BorderRadius.circular(30),
// //                     child: Image.asset(
// //                       'assets/images/cover.jpg',
// //                       width: MediaQuery.of(context).size.width / 1.2,
// //                       fit: BoxFit.contain,
// //                     ),
// //                   ),
// //                 ),
// //                 SizedBox(
// //                   // color: Colors.green,
// //                   height: 60,
// //                   width: MediaQuery.of(context).size.width * 0.9,
// //                   child: ListView.builder(
// //                       scrollDirection: Axis.horizontal,
// //                       itemCount: catList.length,
// //                       itemBuilder: (context, index) {
// //                         return Obx((){
// //                           return Row(
// //                             children: [
// //                               GestureDetector(
// //                                 onTap:(){
// //                                   categoryController.selectedCategoryIndex(index);
// //                                 },
// //                                 child: Container(
// //                                   margin: const EdgeInsets.all(8),
// //                                   padding: const EdgeInsets.symmetric(
// //                                       vertical: 10, horizontal: 18),
// //
// //                                   decoration: BoxDecoration(
// //                                       borderRadius: BorderRadius.circular(20),
// //                                       color: categoryController.selectedCategoryIndex.value == index ? Colors.pink.withOpacity(0.4):Color(0xffE1BEBEFF),
// //                                   ),
// //                                   // height: 50,
// //                                   // width: 50,
// //                                   child: Text(catList[index]),
// //                                 ),
// //                               ),
// //                             ],
// //                           );
// //                         });
// //                       }),
// //                 ),
// //
// //                 GridView.builder(
// //                   physics: NeverScrollableScrollPhysics(),
// //                   shrinkWrap: true,
// //                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// //                       crossAxisCount: 2,
// //                       childAspectRatio:
// //                           (MediaQuery.of(context).size.width - 30 - 15) /
// //                               (2.5 * 290),
// //                       mainAxisSpacing: 45,
// //                       crossAxisSpacing: 15),
// //                   itemCount: imgList.length,
// //                   itemBuilder: (_, i) {
// //                     if (i % 2 == 0) {
// //                       return ProductCard(imgList[i]);
// //                     }
// //                     return OverflowBox(
// //                       maxHeight: 290 + 90,
// //                       child: Container(
// //                         margin: EdgeInsets.only(top: 70),
// //                         child: ProductCard(imgList[i]),
// //                       ),
// //                     );
// //                   },
// //                 )
// //               ],
// //             ),
// //           ),
// //         ),
// //       ),
// //       // bottomNavigationBar: BottomNavigationBar(
// //       //   backgroundColor: Colors.white,
// //       //   iconSize: 30,
// //       //   selectedItemColor: Colors.purple,
// //       //   unselectedItemColor: Colors.grey.withOpacity(0.7),
// //       //   currentIndex: 0,
// //       //   onTap: (index) {},
// //       //   type: BottomNavigationBarType.fixed,
// //       //   items: const [
// //       //     BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
// //       //     BottomNavigationBarItem(
// //       //         icon: Icon(CupertinoIcons.cart_fill), label: ''),
// //       //     BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
// //       //     BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
// //       //   ],
// //       // ),
// //       // floatingActionButton: FloatingActionButton(
// //       //   backgroundColor: Colors.purple,
// //       //   child: Icon(Icons.camera),
// //       //   onPressed: () {},
// //       // ),
// //       // floatingActionButtonLocation:
// //       //     FloatingActionButtonLocation.miniCenterDocked,
// //     );
// //   }
// // }
//
// import 'package:clothes_app/views/cart_view.dart';
// import 'package:clothes_app/views/fav_screen.dart';
// import 'package:clothes_app/views/product_screen.dart';
// import 'package:clothes_app/views/profile_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../controller/product_controller.dart';
//
// class HomeScreen extends StatelessWidget {
//   final ProductController productController = Get.put(ProductController());
//
//   HomeScreen({super.key});
//
//   final List<Widget> _pages = [
//     ProductListView(),
//     const FavScreen(),
//     CartScreen(),
//     ProfileScreen(),
//
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: Colors.bl,
//       body: Obx(() => _pages[productController.selectedIndex.value]),
//       bottomNavigationBar: Obx(
//         () => BottomNavigationBar(
//
//           currentIndex: productController.selectedIndex.value,
//           onTap: productController.changeTabIndex,
//           // backgroundColor: Colors.blueGrey, // Background color of the tab bar
//           selectedItemColor: Colors.black, // Color of the selected icon and label
//           unselectedItemColor: Colors.grey,
//
//           items: const [
//              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.favorite_border), label: "Fav"),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.add_shopping_cart), label: "Cart"),
//
//             BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
//
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// //import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// //
// // class Home extends StatelessWidget {
// //   final ProductController _controller = Get.put(ProductController());
// //
// //   final List<Widget> _screens = [
// //     ProductListView(),
// //     ProfileScreen(),
// //     FavScreen(),
// //     CartScreen(),
// //   ];
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Obx(() {
// //         return _screens[_controller.selectedIndex.value];
// //       }),
// //       bottomNavigationBar: Obx(() {
// //         return BottomNavigationBar(
// //           currentIndex: _controller.selectedIndex.value,
// //           onTap: (index) {
// //             _controller.changeIndex(index);
// //           },
// //           backgroundColor: Colors.blueGrey, // Background color of the tab bar
// //           selectedItemColor: Colors.white, // Color of the selected icon and label
// //           unselectedItemColor: Colors.grey, // Color of unselected icons and labels
// //           items: [
// //             BottomNavigationBarItem(
// //               icon: Icon(Icons.home),
// //               label: 'Home',
// //             ),
// //             BottomNavigationBarItem(
// //               icon: Icon(Icons.search),
// //               label: 'Search',
// //             ),
// //             BottomNavigationBarItem(
// //               icon: Icon(Icons.person),
// //               label: 'Profile',
// //             ),
// //             BottomNavigationBarItem(
// //               icon: Icon(Icons.settings),
// //               label: 'Settings',
// //             ),
// //           ],
// //         );
// //       }),
// //     );
// //   }
// // }

import 'package:clothes_app/views/cart_view.dart';
import 'package:clothes_app/views/fav_screen.dart';
import 'package:clothes_app/views/product_screen.dart';
import 'package:clothes_app/views/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/product_controller.dart';

class HomeScreen extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  HomeScreen({super.key});

  final List<Widget> _pages = [
    ProductListView(),
    const FavScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Obx(() => _pages[productController.selectedIndex.value]),
      bottomNavigationBar: Obx(
        () => BottomAppBar(

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildTabIcon(Icons.home, 0),
              _buildTabIcon(Icons.favorite_border, 1),
              _buildTabIcon(Icons.add_shopping_cart, 2),
              _buildTabIcon(Icons.person, 3),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTabIcon(IconData icon, int index) {
    return IconButton(
      icon: Icon(
        icon,
        color: productController.selectedIndex.value == index
            ? Colors.white.withOpacity(
                0.9) // Change this color to the desired selected color
            : Colors.grey, // Change this color to the desired unselected color
      ),
      onPressed: () {
        productController.changeTabIndex(index);
      },
    );
  }
}
