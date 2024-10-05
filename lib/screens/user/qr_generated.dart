import 'package:flutter/material.dart';
import 'package:wea_app/screens/user/confirmed_attendance_user.dart';
import 'package:wea_app/screens/user/homepage_user.dart';
import 'package:wea_app/utils/colors.dart';
import 'package:wea_app/utils/texts.dart';

class QrGenerated extends StatelessWidget {
  final String qrRoute;

  const QrGenerated({super.key, required this.qrRoute});

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
              Text("Tu Código QR", style: CustomTexts.mediumBlack24),
              const SizedBox(height: 15),
              Container(
                width: 290,
                height: 290,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: CustomColors.red,
                    width: 2,
                  ),
                ),
                child: const Center(
                  child:
                      Icon(Icons.qr_code, color: CustomColors.red, size: 250),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Código: $qrRoute",
                style: CustomTexts.regularBlack16,
              ),
              const SizedBox(height: 10),
              Text(
                "Muestra este código para registrar tu",
                style: CustomTexts.mediumBlack14,
              ),
              Text(
                "asistencia Volver al Inicio",
                style: CustomTexts.mediumBlack14,
              ),
              const SizedBox(height: 20),
              // TODO: Esperar que el codigo QR este escaneado
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const ConfirmedAttendanceUser()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColors.white,
                    side: const BorderSide(color: CustomColors.red),
                    alignment: Alignment.center,
                  ),
                  child: Text(
                    'QR Escaneado',
                    style: CustomTexts.regularRed12,
                  ),
                ),
              ),
              // TODO: Esperar que el codigo QR este escaneado

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
