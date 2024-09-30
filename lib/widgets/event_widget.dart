import 'package:flutter/material.dart';
import 'package:wea_app/utils/colors.dart';
import 'package:wea_app/utils/texts.dart';

class EventWidget extends StatelessWidget {
  final String jornada;
  final String hour_1;
  final String name_1;
  final String locate_1;
  final String hour_2;
  final String name_2;
  final String locate_2;

  const EventWidget({
    super.key,
    required this.jornada,
    required this.hour_1,
    required this.name_1,
    required this.locate_1,
    required this.hour_2,
    required this.name_2,
    required this.locate_2,
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
                Text(
                  "Jornada $jornada",
                  style: CustomTexts.mediumWhite18,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.access_time,
                        color: CustomColors.red, size: 14),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      hour_1,
                      style: CustomTexts.smallBlack8,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  name_1,
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
                      locate_1,
                      style: CustomTexts.smallBlack8,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Icon(Icons.access_time,
                        color: CustomColors.red, size: 14),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      hour_2,
                      style: CustomTexts.smallBlack8,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  name_2,
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
                      locate_2,
                      style: CustomTexts.smallBlack8,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.qr_code,
                        color: CustomColors.red, size: 18),
                    label: Text(
                      'Generar QR',
                      style: CustomTexts.regularRed12,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: CustomColors.white,
                      side: const BorderSide(color: CustomColors.red),
                      alignment: Alignment.center,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
