import 'package:flutter/material.dart';
import 'package:wea_app/screens/staff/attendance_history.dart';
import 'package:wea_app/screens/user/homepage_user.dart';
import 'package:wea_app/utils/colors.dart';
import 'package:wea_app/utils/texts.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.red,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 15, right: 15, bottom: 50, top: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hola!",
                  style: CustomTexts.mediumWhite32,
                ),
                Text(
                  "Bienvenido al evento WEA!",
                  style: CustomTexts.mediumWhite24,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: CustomColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  children: [
                    Container(
                      height: 3,
                      width: 70,
                      decoration: BoxDecoration(
                        color: CustomColors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const SizedBox(height: 40),
                    Text("Iniciar sesión", style: CustomTexts.mediumBlack18),
                    const Spacer(),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: "Correo electrónico",
                      ),
                    ),
                    const Spacer(),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: "Contraseña",
                      ),
                    ),
                    const Spacer(),
                    // TODO: Dejar solo un boton
                    // TODO: Implementar logica para decidir si es usuario o staff
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomepageUser()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.red,
                        padding: const EdgeInsets.all(10),
                        minimumSize: const Size(double.infinity, 55),
                      ),
                      child: Text("Ingresar (User)",
                          style: CustomTexts.mediumWhite18),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AttendanceHistory()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.red,
                        padding: const EdgeInsets.all(10),
                        minimumSize: const Size(double.infinity, 55),
                      ),
                      child: Text("Ingresar (Staff)",
                          style: CustomTexts.mediumWhite18),
                    ),
                    const Spacer(),
                    // TODO: Implementar logica para inscribirse
                    Text(
                      "¿No tienes cuenta?. Inscribete",
                      style: CustomTexts.regularLightBlack14,
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
