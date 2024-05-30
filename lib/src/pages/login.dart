import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:prueba_rt/src/config/constantes.dart';
import 'package:prueba_rt/src/controllers/login.dart';
import 'package:prueba_rt/src/widgets/input.dart';

// ignore: use_key_in_widget_constructors, must_be_immutable
class LoginPage extends StatelessWidget {
  TextEditingController usuario = TextEditingController();
  TextEditingController password = TextEditingController();
  late LoginController loginControl = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          fondoImagen(),
          SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  const SizedBox(
                    height: 55,
                  ),
                  bienvenida("BIENVENIDO"),
                  bienvenida("PRUEBA DE FLUTTER"),
                  SizedBox(
                    height: Get.height * 0.15,
                  ),
                  ...inputData(),
                  const SizedBox(
                    height: 45,
                  ),
                  buttonNext(),
                ],
              ))
        ],
      ),
    );
  }

  Widget bienvenida(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 27),
        ),
        const SizedBox(
          width: 20,
        )
      ],
    );
  }

  List<Widget> inputData() {
    return [
      const Text("Ingrese su usuario y contraseña"),
      InputDefault.inputText(
        usuario,
        texto: "Usuario",
      ),
      Obx(() => InputDefault.inputPassword(
            password,
            loginControl.opcion.value,
            () => loginControl.ocultoVis(),
            texto: "Contraseña",
          )),
    ];
  }

  Widget buttonNext() {
    return SizedBox(
      width: Get.width * 0.28,
      child: IconButton.outlined(
          onPressed: () {
            GetStorage().write("login", home);
            Get.offAllNamed(home);
          },
          icon: const Row(
            children: [
              Text("Ingresar"),
              Icon(Icons.navigate_next),
            ],
          )),
    );
  }
}
