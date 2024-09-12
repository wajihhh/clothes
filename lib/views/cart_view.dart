import 'package:clothes_app/controller/product_controller.dart';
import 'package:clothes_app/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../theming.dart';

class CartScreen extends StatelessWidget {
  final ProductController cartController = Get.find<ProductController>();

  CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(gradient: CustomTheme.getLinearGradient(context)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text(
            'Your Cart',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white.withOpacity(0.9),
            ),
          ),
        ),

        body: Column(
          children: [
            Expanded(
              child: Obx(
                () {
                  if (cartController.cartItems.isEmpty) {
                    return Center(
                      child: Text(
                        'Cart Is Empty',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      ),
                    );
                  } else {
                    return ListView.builder(
                      itemCount: cartController.cartItems.length,
                      itemBuilder: (ctx, index) {
                        var item = cartController.cartItems[index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            height: 100,
                            width: MediaQuery.of(context).size.width,
                            // color: Colors.blue,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(item.imgUrl),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  // width: MediaQuery.of(context).size.width,

                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            item.name,
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color:
                                                  Colors.white.withOpacity(0.9),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            '\$${item.price}',
                                            style: TextStyle(
                                              color:
                                                  Colors.white.withOpacity(0.9),
                                            ),
                                          )

                                          // Text('\$${item.price * item.quantity}')
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: Row(
                                          children: [
                                            Container(
                                              width: 90,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  GestureDetector(
                                                    onTap: () {
                                                      cartController
                                                          .removeFromCart(
                                                        item.id,
                                                      );
                                                    },
                                                    child: Container(
                                                      decoration:
                                                          const BoxDecoration(
                                                        border: Border(
                                                          right: BorderSide(
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                      ),
                                                      child: Icon(
                                                        Icons.remove,
                                                        color: Colors.white
                                                            .withOpacity(0.9),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    '${item.quantity}',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16,
                                                      color: Colors.white
                                                          .withOpacity(0.9),
                                                    ),
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {
                                                      cartController.addToCart(
                                                        Product(
                                                          type: ProductType.all,
                                                          name: item.name,
                                                          price: item.price,
                                                          id: item.id,
                                                          isAvailable: true,
                                                          imageUrl: [
                                                            item.imgUrl
                                                          ],
                                                          off: item.priceOff,
                                                        ),
                                                      );
                                                    },
                                                    child: Container(
                                                      decoration:
                                                          const BoxDecoration(
                                                        border: Border(
                                                          left: BorderSide(
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                      ),
                                                      child: Icon(
                                                        Icons.add,
                                                        color: Colors.white
                                                            .withOpacity(0.9),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  }
                },
              ),
            ),
            Obx(
              () {
                // var item = cartController.cartItems[index];
                int totalItems = cartController.cartItems.isNotEmpty
                    ? cartController.cartItems
                        .map((item) => item.quantity)
                        .reduce((a, b) => a + b)
                    : 0;

                return SizedBox(
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Products:',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white.withOpacity(0.9),
                                ),
                              ),
                              Text(
                                '$totalItems',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white.withOpacity(0.9),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total:',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white.withOpacity(0.9),
                                ),
                              ),
                              Text(
                                '\$${cartController.totalAmount}',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white.withOpacity(0.9),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Colors.black.withOpacity(0.8)),
                              onPressed: () {},
                              child: const Text(
                                "Checkout",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
        // floatingActionButton: FloatingActionButton.extended(
        //   onPressed: () {
        //     // Handle checkout
        //   },
        //   label: Text('Checkout'),
        //   icon: Icon(Icons.shopping_cart),
        // ),
      ),
    );
  }
}
