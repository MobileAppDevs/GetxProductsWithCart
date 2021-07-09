import 'package:getx_2/models/product.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  static var client = http.Client();

  static Future<List<Product>> fetchProduct() async {
    var response = await client.get('http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline');

    if (response.statusCode == 200) {
      return productFromJson(response.body);
    } else {
      print("**********************************************************");
      print("Somethign went wrong");
      return null;
    }
  }
}
