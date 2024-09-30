import 'package:flutter/material.dart';
import 'package:wea_app/screens/user/day_1.dart';
import 'package:wea_app/screens/user/day_2.dart';
import 'package:wea_app/utils/colors.dart';
import 'package:wea_app/utils/texts.dart';
import 'package:wea_app/widgets/day_widget.dart';

class HomepageUser extends StatelessWidget {
  const HomepageUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: Quitar boton de back
      appBar: AppBar(
        backgroundColor: CustomColors.red,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Icon(
              Icons.account_circle,
              size: 58.0,
              color: Colors.blue,
            ),
            // CircleAvatar( backgroundImage: NetworkImage( 'https://example.com/tu_imagen.jpg'), radius: 20, ),
            Text("Congreso WEA", style: CustomTexts.mediumWhite24),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Column(
              children: [
                // TODO: Agregar ruta a cada uno de los widgets para dia 1 y dia 2
                DayWidget(
                  date: "1 oct. 2024",
                  hour: "8:00",
                  amPm: "am",
                  locate: "Universidad Libre",
                  name: "Evento dia 1",
                  route: Day1(),
                ),
                SizedBox(height: 15),
                DayWidget(
                  date: "2 oct. 2024",
                  hour: "8:00",
                  amPm: "am",
                  locate: "Universidad Libre",
                  name: "Evento dia 2",
                  route: Day2(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
