import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:prueba_rt/src/config/constantes.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        fondoHome(),
        menuVisible(() {
          GetStorage().remove("login");
          Get.offAllNamed(login);
        }),
        SizedBox(
          height: Get.height * 0.5,
          width: 250,
          child: const Center(
            child: Text(
              "BIENVENIDO A ESTA APLICACIÓN DE PRUEBA",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ]),
    );
  }
}
