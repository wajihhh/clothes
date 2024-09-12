import 'package:clothes_app/model/product_list.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../model/cart_model.dart';
import '../model/product_model.dart';
import '../services/token_manager.dart';
import '../views/signin/sign_in.dart';

class ProductController extends GetxController {
  List cartItems = <CartItem>[].obs;
  var selectedCategory = ProductType.all.obs;
  final TokenManager _tokenManager = TokenManager();
  RxString username = ''.obs;
  var selectedIndex = 0.obs;
  final GetStorage box = GetStorage();
  final List favoriteItems = <Product>[].obs;

  bool isPriceOff(Product product) => product.off != null;

  void changeTabIndex(int index) {
    selectedIndex.value = index;
  }

  void addToFavorites(Product product) {
    if (!favoriteItems.contains(product)) {
      favoriteItems.add(product);
    }
  }

  void removeFromFavorites(Product product) {
    favoriteItems.remove(product);
  }

  bool isFavorite(Product product) {
    return favoriteItems.contains(product);
  }

  List<Product> get filteredProducts {
    if (selectedCategory.value == ProductType.all) {
      return AppData.productList;
    } else {
      return AppData.productList
          .where((product) => product.type == selectedCategory.value)
          .toList();
    }
  }

  void selectCategory(ProductType category) {
    selectedCategory.value = category;
  }

  void addToCart(Product product) {
    int index = cartItems.indexWhere((item) => item.id == product.id);
    if (index >= 0) {
      cartItems[index] = CartItem(
        priceOff: cartItems[index].priceOff,
        imgUrl: cartItems[index].imgUrl,
        id: cartItems[index].id,
        name: cartItems[index].name,
        quantity: cartItems[index].quantity + 1,
        price: cartItems[index].price,
      );
    } else {
      cartItems.add(
        CartItem(
          priceOff: product.price,
          imgUrl: product.imageUrl[0],
          id: product.id,
          name: product.name,
          quantity: 1,
          price: product.price,
        ),
      );
    }
  }

  void logout() async {
    await _tokenManager.clearToken();
    // await _tokenManager.setLoggedIn(false); // Mark user as logged out
    // Get.offAll(SignInView());

    Get.offAll(() => const SignInView());
  }

  void removeFromCart(String productId) {
    int index = cartItems.indexWhere((item) => item.id == productId);
    if (index >= 0) {
      if (cartItems[index].quantity > 1) {
        cartItems[index] = CartItem(
          priceOff: cartItems[index].price,
          imgUrl: cartItems[index].imgUrl,
          id: cartItems[index].id,
          name: cartItems[index].name,
          quantity: cartItems[index].quantity - 1,
          price: cartItems[index].price,
        );
      } else {

        cartItems.removeAt(index);
      }
    }
  }

  double get totalAmount {
    return cartItems.fold(0, (sum, item) => sum + (item.price * item.quantity));
  }
}
