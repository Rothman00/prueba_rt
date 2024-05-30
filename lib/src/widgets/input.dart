import 'package:flutter/material.dart';
import '../widgets/text.dart';

import '../config/colors.dart';
import '../config/constantes.dart';

class InputDefault {
  static Widget inputText(TextEditingController control,
      {String texto = "",
      Widget? icono,
      TextInputType tipo = TextInputType.text,
      bool enable = true,
      TextAlign posicion = TextAlign.start,
      Function? accion}) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        decoration: containerShadow,
        child: TextField(
          style: const TextStyle(
            color: ColorsConst.pText,
          ),
          textAlign: posicion,
          decoration: InputDecoration(
            icon: icono,
            labelText: texto,
          ),
          controller: control,
          keyboardType: tipo,
          enabled: enable,
          onChanged: accion != null ? (value) => accion(value) : (value) => {},
        ),
      ),
    );
  }

  static Widget inputPassword(
    TextEditingController control,
    bool opcion,
    Function cambioOpc, {
    String texto = "",
    Widget? icono,
  }) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        decoration: containerShadow,
        child: TextField(
          decoration: InputDecoration(
            icon: icono,
            labelText: texto,
            suffixIcon: InkWell(
              onTap: () => cambioOpc(),
              child: opcion
                  ? const Icon(Icons.remove_red_eye)
                  : const Icon(Icons.no_encryption_gmailerrorred),
            ),
          ),
          style: const TextStyle(color: Colors.black),
          obscureText: opcion,
          controller: control,
        ),
      ),
    );
  }

  static Widget inputCheck(bool isChecked, Function change, String texto) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (bool? value) => change(value),
          activeColor: ColorsConst.sText,
        ),
        TextDefault.titulo(texto),
      ],
    );
  }
}
