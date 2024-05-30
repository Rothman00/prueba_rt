import 'package:get/get.dart';

class LoginController extends GetxController {
  var opcion = true.obs;
  void ocultoVis() => opcion.value = !opcion.value;
}
