import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/product_controller.dart';
import '../model/product_model.dart';
import '../widgets/toast.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;
  final ProductController cartController = Get.find<ProductController>();

  ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.black,
            Colors.black,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          // title: Text(product.name),
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          // actions: [
          //   IconButton(
          //     icon: const Icon(
          //       Icons.shopping_cart,
          //       color: Colors.white,
          //     ),
          //     onPressed: () {
          //       Get.to(() => CartScreen());
          //     },
          //   ),
          // ],
        ),
        body: Stack(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: SizedBox(
                // color: Colors.grey.withOpacity(0.2),
                height: 250,
                child: PageView.builder(
                  itemCount: product.imageUrl.length,
                  itemBuilder: (ctx, index) {
                    return Image.asset(product.imageUrl[index]);
                  },
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                height: MediaQuery.of(context).size.height * 0.6,
                // width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 25),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          product.name,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$${product.price}',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.green),
                          ),
                          Text(
                            product.isAvailable ? 'Available' : "Unavailable",
                            style: const TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 18),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),

                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Description:',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                CupertinoIcons.star_fill,
                                size: 20,
                                color: Color(0xffFFB800),
                              ),
                              Icon(
                                CupertinoIcons.star_fill,
                                size: 20,
                                color: Color(0xffFFB800),
                              ),
                              Icon(
                                CupertinoIcons.star_fill,
                                size: 20,
                                color: Color(0xffFFB800),
                              ),
                              Icon(
                                CupertinoIcons.star_fill,
                                size: 20,
                                color: Color(0xffFFB800),
                              ),
                              Icon(
                                CupertinoIcons.star_fill,
                                size: 20,
                                color: Color(0xffFFB800),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        product.about,
                        style: const TextStyle(fontSize: 20),
                      ),

                      const Spacer(),

                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: product.isAvailable
                                ? Colors.black.withOpacity(0.8)
                                : Colors.grey,
                          ),
                          onPressed: () {
                            if (product.isAvailable) {
                              cartController.addToCart(product);
                              showToast(message: 'Product added to cart');
                            } else {
                              return;
                            }
                          },
                          child: const Text(
                            'Add to Cart',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        ),
                      ),
                      // Text(product.description),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
