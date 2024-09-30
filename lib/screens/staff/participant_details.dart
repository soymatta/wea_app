import 'package:flutter/material.dart';
import 'package:wea_app/utils/colors.dart';
import 'package:wea_app/utils/texts.dart';
import 'package:wea_app/widgets/attendance_row.dart';

class ParticipantDetails extends StatelessWidget {
  late String name;
  late int attendances;
  late bool isParticipantSelected;
  late bool attendedDay1Morning;
  late bool attendedDay1Afternoon;
  late bool attendedDay2Morning;
  late bool attendedDay2Afternoon;

  @override
  Widget build(BuildContext context) {
    // Variables de prueba
    name = "Juan Pérez";
    attendances = 2;
    isParticipantSelected = true;
    attendedDay1Morning = true;
    attendedDay1Afternoon = false;
    attendedDay2Morning = false;
    attendedDay2Afternoon = true;
    // Variables de prueba

    return Scaffold(
        backgroundColor: CustomColors.white,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Text("Historial de asistencias",
                  style: CustomTexts.mediumBlack24),
              const SizedBox(height: 15),
              Row(
                children: [
                  const Icon(
                    Icons.person_2_outlined,
                    color: CustomColors.red,
                    size: 24,
                  ),
                  const SizedBox(width: 8),
                  Text(name, style: CustomTexts.regularBlack16),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(128, 158, 158, 158),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        isParticipantSelected ? 'Participante' : 'Ponente',
                        style: const TextStyle(
                          color: CustomColors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
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
              const SizedBox(height: 20),
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
                                attended: attendedDay1Morning,
                                jornada: 'Jornada matutina'),
                            const SizedBox(height: 3),
                            AttendanceRow(
                                attended: attendedDay1Afternoon,
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
                                attended: attendedDay2Morning,
                                jornada: 'Jornada matutina'),
                            const SizedBox(height: 3),
                            AttendanceRow(
                                attended: attendedDay2Afternoon,
                                jornada: 'Jornada vespertina'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
