import 'package:flutter/material.dart';
import 'package:wea_app/screens/user/homepage_user.dart';
import 'package:wea_app/utils/colors.dart';
import 'package:wea_app/utils/texts.dart';

class ConfirmedAttendanceUser extends StatelessWidget {
  const ConfirmedAttendanceUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Spacer(),
              Image.asset(
                'assets/images/Libre_minilogo.png',
                width: 60,
                height: 60,
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Asistencia Confirmada", style: CustomTexts.mediumBlack24),
              const SizedBox(height: 15),
              const Icon(Icons.check_circle_outline,
                  color: CustomColors.red, size: 120),
              const SizedBox(height: 10),
              Text(
                "Tu asistencia ha sido registrada ",
                style: CustomTexts.mediumBlack14,
              ),
              Text(
                "exitosamente.",
                style: CustomTexts.mediumBlack14,
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomepageUser()),
                    );
                  },
                  icon: const Icon(Icons.arrow_back,
                      color: CustomColors.red, size: 18),
                  label: Text(
                    'Volver al Inicio',
                    style: CustomTexts.regularRed12,
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColors.white,
                    side: const BorderSide(color: CustomColors.red),
                    alignment: Alignment.center,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
