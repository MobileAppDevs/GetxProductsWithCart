import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:getx_2/controllers/productcontroller.dart';
import 'package:getx_2/views/product_tile.dart';

class HomePage extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: Obx(
        () => Padding(
          padding: EdgeInsets.only(left: 5, right: 5, top: 5),
          child: StaggeredGridView.countBuilder(
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            crossAxisCount: 2,
            itemCount: productController.productList.length,
            itemBuilder: (context, index) {
              return ProductTile(productController.productList[index]);
            },
            staggeredTileBuilder: (index) => StaggeredTile.fit(1),
          ),
        ),
      ),
    );
  }
}
