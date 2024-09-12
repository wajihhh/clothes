import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/product_controller.dart';
import '../theming.dart';
import '../widgets/product_card.dart';

class FavScreen extends StatelessWidget {
   const FavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductController controller = Get.find();

    return Container(
      decoration: BoxDecoration(gradient: CustomTheme.getLinearGradient(context)),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title:  Text('Your Favorites',style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold,
            color:

            Colors.white.withOpacity(0.9),

          ),),
        ),
        body: Obx(
          () {
            if (controller.favoriteItems.isEmpty) {
              return const Center(
                child: Text(
                  'No Favorites Added',
                  style: TextStyle(fontSize: 20),
                ),
              );
            } else {
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 270,
                ),
                itemCount: controller.favoriteItems.length,
                itemBuilder: (context, index) {
                  final product = controller.favoriteItems[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ProductCard(
                      product: product,
                      onTap: () {
                        // Handle product tap (e.g., navigate to product detail)
                      },
                    ),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
