import 'package:flutter/material.dart';
import 'package:wea_app/utils/colors.dart';
import 'package:wea_app/utils/texts.dart';

class AttendanceRow extends StatelessWidget {
  final bool attended;
  final String jornada;

  const AttendanceRow(
      {super.key, required this.attended, required this.jornada});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.access_time,
          color: CustomColors.red,
          size: 20,
        ),
        const SizedBox(width: 10),
        Text(
          jornada,
          style: CustomTexts.regularLightBlack14,
        ),
        const Spacer(),
        Container(
          decoration: BoxDecoration(
            color: attended ? Colors.transparent : CustomColors.red,
            border:
                attended ? Border.all(color: CustomColors.red, width: 1) : null,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              attended ? 'Asistió' : 'No asistió',
              style: attended
                  ? CustomTexts.regularLightBlack14
                  : CustomTexts.regularWhite14,
            ),
          ),
        ),
      ],
    );
  }
}
