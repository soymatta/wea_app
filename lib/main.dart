import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wea_app/screens/login.dart';
import 'package:wea_app/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wea App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: CustomColors.red),
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme().apply(
          bodyColor: CustomColors.black,
          displayColor: CustomColors.black,
        ),
      ),
      // TODO: Implemenar logica para guardar sesion inciada (Usuaro o Staff)
      home: const Login(),
    );
  }
}
