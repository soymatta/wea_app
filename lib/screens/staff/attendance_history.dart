import 'package:flutter/material.dart';
import 'package:wea_app/utils/colors.dart';
import 'package:wea_app/utils/texts.dart';
import 'package:wea_app/widgets/participant_card.dart';

class AttendanceHistory extends StatefulWidget {
  const AttendanceHistory({super.key});

  @override
  State<AttendanceHistory> createState() => _AttendanceHistoryState();
}

class _AttendanceHistoryState extends State<AttendanceHistory> {
  bool isParticipantSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColors.white,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Text("Historial de asistencias",
                  style: CustomTexts.mediumBlack24),
              const SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: CustomColors.red,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: CustomColors.red,
                    ),
                    hintText: 'Buscar...',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isParticipantSelected = true;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                        color: isParticipantSelected
                            ? CustomColors.red
                            : CustomColors.grey,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      child: Text(
                        'Participantes',
                        style: TextStyle(
                          color: isParticipantSelected
                              ? CustomColors.white
                              : CustomColors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isParticipantSelected = false;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                        color: !isParticipantSelected
                            ? CustomColors.red
                            : CustomColors.grey,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Text(
                        'Ponentes',
                        style: TextStyle(
                          color: !isParticipantSelected
                              ? CustomColors.white
                              : CustomColors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: isParticipantSelected
                        // Lista de participantes
                        ? [
                            const ParticipantCard(
                                name: "Carlos Pérez", attendances: 1),
                            const ParticipantCard(
                                name: "María González", attendances: 2),
                            const ParticipantCard(
                                name: "Luis Ramírez", attendances: 3),
                            const ParticipantCard(
                                name: "Ana Martínez", attendances: 4),
                          ]
                        // Lista de ponentes
                        : [
                            const ParticipantCard(
                                name: "Pedro Fernández", attendances: 1),
                            const ParticipantCard(
                                name: "Lucía Rodríguez", attendances: 2),
                          ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
