import 'package:flutter/material.dart';
import 'package:wea_app/utils/colors.dart';
import 'package:wea_app/utils/texts.dart';

// TODO: Hacer que el boton de ingresar sea interactivo

class DayWidget extends StatelessWidget {
  final String date;
  final String hour;
  final String amPm;
  final String locate;
  final String name;
  final Widget route;

  const DayWidget({
    super.key,
    required this.date,
    required this.hour,
    required this.amPm,
    required this.locate,
    required this.name,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CustomColors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            height: 50,
            decoration: const BoxDecoration(
              color: CustomColors.red,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              ),
            ),
            child: Row(
              children: [
                const Icon(Icons.calendar_today,
                    color: CustomColors.white, size: 18),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  date,
                  style: CustomTexts.regularWhite14,
                ),
                const Spacer(),
                Text(
                  '$hour $amPm',
                  style: CustomTexts.regularWhite14,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Icon(Icons.access_time,
                    color: CustomColors.white, size: 18),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Próxima sesión...',
                  style: CustomTexts.smallBlack8,
                ),
                const SizedBox(height: 8),
                Text(
                  name,
                  style: CustomTexts.regularBlack14,
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.location_on_outlined,
                        color: CustomColors.red, size: 14),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      locate,
                      style: CustomTexts.smallBlack8,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => route),
                        );
                      },
                      icon: const Icon(Icons.calendar_today,
                          color: CustomColors.red, size: 14),
                      label: SizedBox(
                        child: Text(
                          'Ingresar',
                          style: CustomTexts.regularRed12,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: CustomColors.white,
                        side: const BorderSide(color: CustomColors.red),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          Text(
                            'Ver más',
                            style: CustomTexts.regularRed12,
                          ),
                          const SizedBox(width: 5),
                          const Icon(Icons.arrow_forward_ios,
                              color: CustomColors.red, size: 14),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
