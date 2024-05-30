import 'package:flutter/material.dart';
import '../config/colors.dart';

class ButtonDefault {
  static Widget botonNaranja(String text, bool estado, Function funcion) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: estado
          ? ElevatedButton(
              onPressed: () => funcion(),
              child:
                  Text(text, style: const TextStyle(color: ColorsConst.black)),
            )
          : const Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(ColorsConst.sText),
              ),
            ),
    );
  }
}
