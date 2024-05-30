//    RUTAS DE ACCESO
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/colors.dart';

//    RUTAS
const login = "/login";
const home = "/home";

//    IMAGEN Y MENÚ FONDO
Widget fondoImagen() {
  return Positioned(
    right: 100,
    bottom: -20,
    child: SizedBox(
      width: 300,
      height: 300,
      child: Image.asset(
        'assets/images/logo.png',
        fit: BoxFit.fitHeight,
      ),
    ),
  );
}

Widget fondoHome() {
  return SizedBox(
    width: 150,
    height: 150,
    child: Image.asset(
      'assets/images/logo.png',
      fit: BoxFit.fitHeight,
    ),
  );
}

Widget menuVisible(
  Function fOption, {
  IconData icono = Icons.arrow_back,
  MainAxisAlignment position = MainAxisAlignment.end,
  List<Widget>? opciones,
  bool optHome = true,
}) {
  return Container(
    width: double.infinity,
    height: Get.mediaQuery.size.height * 0.04,
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Row(
      children: [
        InkWell(
          onTap: () => fOption(),
          child: Padding(
            padding:
                EdgeInsets.only(bottom: Get.mediaQuery.size.height * 0.025),
            child: Icon(
              icono,
              //color: ColorsConst.pText,
              size: Get.mediaQuery.size.height * 0.045,
            ),
          ),
        ),
        Expanded(
          child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: position,
                children: [
                  Text(
                    DateTime.now().toString(),
                    textScaler: TextScaler.linear(
                        Get.mediaQuery.size.height * 0.03 / 20),
                    style: const TextStyle(
                      //color: ColorsConst.pText,
                      fontSize: 10.0,
                    ),
                  ),
                  ...opciones ?? [],
                  const SizedBox(width: 30),
                  optHome
                      ? InkWell(
                          onTap: () => Get.offAllNamed(home),
                          child: Padding(
                            padding: EdgeInsets.only(
                                bottom: Get.mediaQuery.size.height * 0.025),
                            child: Icon(
                              Icons.home,
                              size: Get.mediaQuery.size.height * 0.045,
                            ),
                          ),
                        )
                      : Container(),
                ],
              )),
        ),
      ],
    ),
  );
}

//    DECORACIÓN
BoxDecoration containerShadow = BoxDecoration(
  color: ColorsConst.white,
  borderRadius: BorderRadius.circular(10),
  boxShadow: const [
    BoxShadow(
      color: ColorsConst.shadow,
      spreadRadius: 5,
      blurRadius: 7,
      offset: Offset(0, 3),
    ),
  ],
);
