import 'package:clothes_app/model/product_list.dart';
import 'package:clothes_app/views/product_detail_view.dart';
import 'package:clothes_app/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../controller/product_controller.dart';
import '../theming.dart';
import '../widgets/category_card.dart';

class ProductListView extends StatelessWidget {
  ProductListView({super.key});

  final GetStorage box = GetStorage();

  @override
  Widget build(BuildContext context) {
    final ProductController controller = Get.put(ProductController());

    return Container(
      decoration:
          BoxDecoration(gradient: CustomTheme.getLinearGradient(context)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "Hi ",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 30,
                              color: Colors.white.withOpacity(0.9),
                            ),
                          ),
                          const TextSpan(
                            text: '',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              // You can change the font weight if   needed
                              fontSize: 35,
                              // Adjust the size
                              color: Colors.black, // Change the color
                            ),
                          ),
                          TextSpan(
                            text: "\nWelcome Back!",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 30,
                              color: Colors.white.withOpacity(0.9),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.logout();
                      },
                      child: Icon(
                        Icons.logout,
                        color: Colors.white.withOpacity(0.9),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white.withOpacity(0.9),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width * 0.8,
                  // color: Colors.orange,
                  child: ListView.builder(
                    // itemExtent: 20,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: AppData.categories.length,
                    itemBuilder: (context, index) {
                      final category = AppData.categories[index];
                      return Obx(
                        () {
                          return CategoryCard(
                            onTap: () {
                              controller.selectCategory(category.type);
                            },
                            icon: category.icon,
                            isSelected: controller.selectedCategory.value ==
                                category.type,
                          );
                        },
                      );
                    },
                  ),
                ),
                Obx(
                  () {
                    return SizedBox(
                      // color: Colors.black,
                      height: MediaQuery.of(context).size.height * 0.6,
                      // width: MediaQuery.of(context).size.width * 0.9,
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 20,
                          // childAspectRatio: MediaQuery.of(context).size.height-,
                          // childAspectRatio: 10/9,
                          mainAxisSpacing: 30,
                          mainAxisExtent: 270,
                        ),
                        itemCount: controller.filteredProducts.length,
                        itemBuilder: (context, index) {
                          final product = controller.filteredProducts[index];
                          return ProductCard(
                            product: product,
                            onTap: () {
                              Get.to(ProductDetailScreen(product: product));
                            },
                          );
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
