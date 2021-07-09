import 'package:get/state_manager.dart';
import 'package:getx_2/models/product.dart';
import 'package:getx_2/services/remote_services.dart';

class ProductController extends GetxController {
  var productList = [].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    var products = await RemoteServices.fetchProduct();
    if (products != null) {
      productList.assignAll(products);
    }
  }
}
