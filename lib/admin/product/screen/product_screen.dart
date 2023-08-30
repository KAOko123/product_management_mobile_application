import 'package:flutter/material.dart';
import 'package:product_management_mobile_application/admin/product/model/Product.dart';
import 'package:product_management_mobile_application/admin/product/presenter/product_presenter.dart';
import 'package:product_management_mobile_application/admin/product/views/product_view.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> implements ProductView {
  late ProductPresenter productPresenter;
  bool loading = false;
  List<Product> productList = [];

  @override
  void initState() {
    super.initState();
    productPresenter = ProductPresenter(this);
    productPresenter.getAllProduct();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "List Product",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(5),
        child: loading == true
            ? Center(
                child: CircularProgressIndicator(
                  color: Colors.pink,
                ),
              )
            : ListView.builder(
                itemCount: productList.length,
                itemBuilder: (BuildContext context, index) {
                  var product = productList[index];
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(.03),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: ListTile(
                      title: Text("${product.title}"),
                    ),
                  );
                },
              ),
      ),
    );
  }

  @override
  void onError(String message) {
    print("Error : ${message}");
  }

  @override
  void onGetAllProductSuccess(List<Product> list) {
    setState(() {
      productList = list;
    });
  }

  @override
  void onHiding() {
    setState(() {
      loading = false;
    });
  }

  @override
  void onLoading() {
    setState(() {
      loading = true;
    });
  }
}
