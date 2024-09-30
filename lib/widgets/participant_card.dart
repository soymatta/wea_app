import 'package:flutter/material.dart';
import 'package:wea_app/utils/colors.dart';
import 'package:wea_app/utils/texts.dart';

// TODO: Hacer que la card sea interactiva y que navegue a detalles con los datos de la card

class ParticipantCard extends StatelessWidget {
  final String name;
  final int attendances;

  const ParticipantCard({
    super.key,
    required this.name,
    required this.attendances,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO: Navegar a la pantalla de detalles del participante
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: CustomColors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: CustomColors.red,
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.person_2_outlined,
                    color: CustomColors.red,
                    size: 24,
                  ),
                  const SizedBox(width: 8),
                  Text(name, style: CustomTexts.regularBlack14),
                  const Spacer(),
                  Text('$attendances/4 sesiones',
                      style: CustomTexts.smallLightBlack11),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                "Asistencia total",
                style: CustomTexts.smallLightBlack11,
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 5,
                decoration: BoxDecoration(
                  color: CustomColors.grey,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: FractionallySizedBox(
                  alignment: Alignment.centerLeft,
                  widthFactor: attendances / 4,
                  child: Container(
                    decoration: BoxDecoration(
                      color: CustomColors.red,
                      borderRadius: BorderRadius.circular(5),
                    ),
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
