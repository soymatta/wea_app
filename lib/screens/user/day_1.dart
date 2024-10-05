import 'package:flutter/material.dart';
import 'package:wea_app/utils/texts.dart';
import 'package:wea_app/widgets/event_widget.dart';

class Day1 extends StatelessWidget {
  const Day1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            const SizedBox(width: 1),
            const Spacer(),
            Text("Dia 1 - 1 Oct.", style: CustomTexts.regularRed24),
            const Spacer(),
            Image.asset(
              'assets/images/Libre_minilogo.png',
              width: 60,
              height: 60,
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(15.0),
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                EventWidget(
                  jornada: "Matutina",
                  hour_1: "8:00 - 10:00 am",
                  name_1: "Ceremonia de Apertura",
                  locate_1: "Sala 1",
                  hour_2: "2:00 - 4:00 pm",
                  name_2: "Ceremonia de Cierre",
                  locate_2: "Sala 2",
                  qrRoute: 'TestQRCode1',
                ),
                SizedBox(height: 15),
                EventWidget(
                  jornada: "Vespertina",
                  hour_1: "4:30 - 6:30 pm",
                  name_1: "Taller de Innovación",
                  locate_1: "Sala 3",
                  hour_2: "7:00 - 9:00 pm",
                  name_2: "Conferencia Magistral",
                  locate_2: "Auditorio Principal",
                  qrRoute: 'TestQRCode2',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
