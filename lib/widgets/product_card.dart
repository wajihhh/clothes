import 'package:flutter/material.dart';
import 'package:clothes_app/model/product_model.dart';
import 'package:get/get.dart';
import '../controller/product_controller.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback onTap;

  const ProductCard({
    Key? key,
    required this.product,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProductController controller = Get.find();

    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 7,
        child: Container(
          decoration: BoxDecoration(
            // color: Colors.grey.withOpacity(0.1),
            // color: Colors.blue.shade50,
            color: Colors.black.withOpacity(0.8),
            // color: Colors.blue,
            // gradient: const LinearGradient(
            //     begin: Alignment.topRight,
            //     end: Alignment.bottomLeft,
            //     colors: [
            //       Colors.white,
            //       Colors.white,
            //     ]),
            // boxShadow:  [
            //   // BoxShadow(
            //   //   color: Colors.black,
            //   //   spreadRadius: 6,
            //   //   blurRadius: ,
            //   //   offset: Offset(1, 8,),
            //   //   blurStyle: BlurStyle.solid
            //   // ),
            // ],
            borderRadius: BorderRadius.circular(10),
          ),
          height: MediaQuery.of(context).size.height * 0.4,
          width: MediaQuery.of(context).size.width * 0.4,
          // height: 600,
          //                       width: 100,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  // color: Colors.grey.withOpacity(0.1),
                  color: Colors.black.withOpacity(0.2),
                  // color: Colors.white.withOpacity(0.5),

                  borderRadius: BorderRadius.circular(10),
                ),
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    // borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      product.imageUrl[0],
                      height: 100,
                      // fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                product.name,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white.withOpacity(0.9),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Visibility(
                          visible: product.off != null ? true : false,
                          child: Text(
                            "\$${product.price}",
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: Colors.white.withOpacity(0.9),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          product.off != null
                              ? '\$${product.off}'
                              : '\$${product.price}',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {
                        if (controller.isFavorite(product)) {
                          controller.removeFromFavorites(product);
                        } else {
                          controller.addToFavorites(product);
                        }
                      },
                      icon: Icon(
                        controller.isFavorite(product)
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: controller.isFavorite(product)
                            ? Colors.red
                            : Colors.grey,
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
