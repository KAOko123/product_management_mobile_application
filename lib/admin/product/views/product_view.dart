import 'package:product_management_mobile_application/admin/product/model/Product.dart';
import 'package:product_management_mobile_application/views/base_view.dart';

abstract interface class ProductView implements BaseView {
  void onGetAllProductSuccess(List<Product> list);
  void onGetProductByIdSuccess(Product product);
  void onLoadingGetProductById();
  void onHidingGetProductById();
}