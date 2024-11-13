import 'package:get/get.dart';
import 'package:getx/routes_names.dart';
import 'package:getx/view/auth/login.dart';
import 'package:getx/view/auth/signup.dart';

import 'binding/register_binding.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: AppRouteName.initial,
      page: () => LoginScreen(), // Your home screen
    ),
    GetPage(
      name: AppRouteName.signUp,
      page: () => RegistrationScreen(),
      binding: AuthBinding(), // Use your binding here
    ),
  ];
}
