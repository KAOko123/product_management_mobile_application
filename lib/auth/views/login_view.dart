import 'package:product_management_mobile_application/auth/models/login_response.dart';
import 'package:product_management_mobile_application/views/base_view.dart';

abstract interface class LoginView implements BaseView{
  void onLoginSuccess(LoginResponse res);
}
