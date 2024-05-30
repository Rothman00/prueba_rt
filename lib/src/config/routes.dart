import 'package:get/get.dart';
import 'package:prueba_rt/src/pages/home.dart';
import 'package:prueba_rt/src/pages/login.dart';
import '../config/constantes.dart';

List<GetPage<dynamic>> rutas = [
  GetPage(
    name: login,
    page: () => LoginPage(),
    transition: Transition.fadeIn,
    transitionDuration: const Duration(seconds: 1),
  ),
  GetPage(
    name: home,
    page: () => HomePage(),
    transition: Transition.fadeIn,
    transitionDuration: const Duration(seconds: 1),
  ),
];
