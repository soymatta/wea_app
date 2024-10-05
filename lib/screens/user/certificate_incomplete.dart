import 'package:flutter/material.dart';
import 'package:wea_app/utils/colors.dart';
import 'package:wea_app/utils/texts.dart';
import 'package:wea_app/widgets/attendance_row.dart';

class CertificateIncomplete extends StatelessWidget {
  final bool attendanceEvent1;
  final bool attendanceEvent2;
  final bool attendanceEvent3;
  final bool attendanceEvent4;
  final int attendances;

  const CertificateIncomplete({
    super.key,
    required this.attendanceEvent1,
    required this.attendanceEvent2,
    required this.attendanceEvent3,
    required this.attendanceEvent4,
    required this.attendances,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          children: [
            const Spacer(),
            Row(
              children: [
                Text(
                  "Asistencia total",
                  style: CustomTexts.regularLightBlack14,
                ),
                const Spacer(),
                Text(
                  "$attendances/4 sesiones",
                  style: CustomTexts.regularLightBlack14,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 8,
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
            const SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: CustomColors.red,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_today,
                          color: CustomColors.red,
                          size: 20,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Martes 1 de Octubre de 2024',
                          style: CustomTexts.regularLightBlack14,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Column(
                        children: [
                          AttendanceRow(
                              attended: attendanceEvent1,
                              jornada: 'Jornada matutina'),
                          const SizedBox(height: 3),
                          AttendanceRow(
                              attended: attendanceEvent2,
                              jornada: 'Jornada vespertina'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_today,
                          color: CustomColors.red,
                          size: 20,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Miércoles 2 de Octubre de 2024',
                          style: CustomTexts.regularLightBlack14,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Column(
                        children: [
                          AttendanceRow(
                              attended: attendanceEvent3,
                              jornada: 'Jornada matutina'),
                          const SizedBox(height: 3),
                          AttendanceRow(
                              attended: attendanceEvent4,
                              jornada: 'Jornada vespertina'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            Text(
              "¡Completa todas las jornadas para obtener tu certificado!",
              style: CustomTexts.regularBlack14,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
