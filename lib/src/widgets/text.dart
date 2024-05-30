import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../config/colors.dart';

class TextDefault {
  static Widget titulo(String text,
      {double size = 14, TextAlign posicion = TextAlign.start}) {
    return Text(
      text,
      textAlign: posicion,
      overflow: TextOverflow.ellipsis,
      maxLines: 4,
      style: TextStyle(
        color: ColorsConst.sText,
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  static Widget subtitulo(String text,
      {double size = 14,
      TextAlign posicion = TextAlign.start,
      Color color = ColorsConst.pText}) {
    return Text(
      text,
      textAlign: posicion,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
  }

  static TextSpan textTitulo(String text,
          {double size = 14, List<InlineSpan>? masText}) =>
      TextSpan(
          text: text,
          style: TextStyle(
            color: ColorsConst.sText,
            fontSize: size,
            fontWeight: FontWeight.bold,
          ),
          children: masText);

  static TextSpan textSubtitulo(String text,
          {double size = 14, FontWeight tLetra = FontWeight.bold}) =>
      TextSpan(
        text: text,
        style: TextStyle(
          color: ColorsConst.pText,
          fontSize: size,
          fontWeight: tLetra,
        ),
      );

  static Widget textoPDF(String texto,
      {double size = 14,
      FontWeight tipo = FontWeight.bold,
      TextAlign align = TextAlign.center}) {
    return Text(
      texto,
      textAlign: align,
      style: TextStyle(
        fontSize: size,
        fontWeight: tipo,
      ),
    );
  }

  static Widget imagenPDF(String ruta, String local64, {double size = 0.12}) {
    if (ruta != '') {
      return Image.network(ruta,
          height: Get.height * size, fit: BoxFit.contain);
    }
    if (local64 != '') {
      Uint8List bytes = base64.decode(local64);
      return Image.memory(bytes,
          height: Get.height * size, fit: BoxFit.contain);
    }
    return Container();
  }
}
