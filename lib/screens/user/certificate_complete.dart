import 'package:flutter/material.dart';
import 'package:wea_app/utils/colors.dart';
import 'package:wea_app/utils/texts.dart';

class CertificateComplete extends StatelessWidget {
  final String userName;

  const CertificateComplete({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Se certifica que",
                style: CustomTexts.mediumBlack14,
              ),
              const SizedBox(height: 10),
              Text(userName, style: CustomTexts.mediumBlack24),
              const SizedBox(height: 10),
              Text("ha participado en todas las jornadas del Congreso WEA",
                  style: CustomTexts.regularLightBlack14),
              const SizedBox(height: 20),
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
              const SizedBox(height: 20),
              Text("Fecha de emision: 15/10/2024",
                  style: CustomTexts.regularLightBlack14),
              Text("ID: CERT-2023-0001",
                  style: CustomTexts.regularLightBlack14),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    // TODO: Funcion para descargar el certificado
                  },
                  icon: const Icon(Icons.download,
                      color: CustomColors.red, size: 18),
                  label: Text(
                    'Descargar Certificado',
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
        ),
      ),
    );
  }
}
