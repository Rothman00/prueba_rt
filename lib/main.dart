import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:prueba_rt/src/config/constantes.dart';
import 'package:prueba_rt/src/config/routes.dart';
import 'package:prueba_rt/src/config/theme.dart';

Future<void> main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final box = GetStorage();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Prueba Rothman Torres',
      themeMode: ThemeMode.system,
      theme: lightTheme,
      darkTheme: darkTheme,
      locale: const Locale('es', 'ES'),
      initialRoute: box.read('login') != null ? home : login,
      getPages: rutas,
    );
  }
}
