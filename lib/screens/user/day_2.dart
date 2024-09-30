import 'package:flutter/material.dart';
import 'package:wea_app/utils/colors.dart';
import 'package:wea_app/utils/texts.dart';
import 'package:wea_app/widgets/event_widget.dart';

class Day2 extends StatelessWidget {
  const Day2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: Quitar boton de back
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: CustomColors.red,
                size: 24,
              ),
              onPressed: () {},
            ),
            const Spacer(),
            Text("Día 2 - 2 Oct.", style: CustomTexts.regularRed24),
            const Spacer(),
            const Icon(
              Icons.account_circle,
              size: 58.0,
              color: Colors.blue,
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Column(
              children: [
                EventWidget(
                    jornada: "Matutina",
                    hour_1: "9:00 - 11:00 am",
                    name_1: "Charla Motivacional",
                    locate_1: "Sala 4",
                    hour_2: "11:30 am - 1:30 pm",
                    name_2: "Panel de Discusión",
                    locate_2: "Sala 5"),
                SizedBox(height: 15),
                EventWidget(
                  jornada: "Vespertina",
                  hour_1: "3:00 - 5:00 pm",
                  name_1: "Workshop de Desarrollo",
                  locate_1: "Sala 6",
                  hour_2: "5:30 - 7:30 pm",
                  name_2: "Mesa Redonda",
                  locate_2: "Auditorio Secundario",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
