import 'package:flutter/material.dart';
import 'package:wea_app/utils/colors.dart';
import 'package:wea_app/utils/texts.dart';

class QrGenerated extends StatelessWidget {
  const QrGenerated({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Spacer(),
              Icon(
                Icons.account_circle,
                size: 58.0,
                color: Colors.blue,
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
                "Código: WEA2023-mha8fid4g",
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
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {},
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
