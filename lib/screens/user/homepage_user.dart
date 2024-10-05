import 'package:flutter/material.dart';
import 'package:wea_app/screens/user/certificate_complete.dart';
import 'package:wea_app/screens/user/certificate_incomplete.dart';
import 'package:wea_app/screens/user/day_1.dart';
import 'package:wea_app/screens/user/day_2.dart';
import 'package:wea_app/utils/colors.dart';
import 'package:wea_app/utils/texts.dart';
import 'package:wea_app/widgets/day_widget.dart';

class HomepageUser extends StatefulWidget {
  const HomepageUser({super.key});

  @override
  State<HomepageUser> createState() => _HomepageUserState();
}

class _HomepageUserState extends State<HomepageUser> {
  int _currentIndex = 0;

  // Variables de prueba
  String nombreUsuario = "Juan Pérez";
  bool asistenciaEvento1 = true;
  bool asistenciaEvento2 = true;
  bool asistenciaEvento3 = false;
  bool asistenciaEvento4 = false;
  int asistencias = 0;
  // Variables de prueba

  @override
  void initState() {
    super.initState();
    asistencias = 0;
    if (asistenciaEvento1) asistencias++;
    if (asistenciaEvento2) asistencias++;
    if (asistenciaEvento3) asistencias++;
    if (asistenciaEvento4) asistencias++;
  }

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget certificadoPage;
    if (asistencias < 4) {
      certificadoPage = CertificateIncomplete(
        attendanceEvent1: asistenciaEvento1,
        attendanceEvent2: asistenciaEvento2,
        attendanceEvent3: asistenciaEvento3,
        attendanceEvent4: asistenciaEvento4,
        attendances: asistencias,
      );
    } else {
      certificadoPage = CertificateComplete(userName: nombreUsuario);
    }

    final List<Widget> _pages = [
      const Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Spacer(),
            DayWidget(
              date: "1 oct. 2024",
              hour: "8:00",
              amPm: "am",
              locate: "Universidad Libre",
              name: "Evento dia 1",
              route: Day1(),
            ),
            SizedBox(height: 30),
            DayWidget(
              date: "2 oct. 2024",
              hour: "8:00",
              amPm: "am",
              locate: "Universidad Libre",
              name: "Evento dia 2",
              route: Day2(),
            ),
            Spacer(),
          ],
        ),
      ),
      certificadoPage,
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.red,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.asset(
              'assets/images/Libre_minilogo.png',
              width: 60,
              height: 60,
            ),
            Text("Congreso WEA", style: CustomTexts.mediumWhite24),
          ],
        ),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.badge),
            label: 'Certificado',
          ),
        ],
        selectedItemColor: CustomColors.red,
        unselectedItemColor: CustomColors.lightBlack,
        backgroundColor: CustomColors.white,
      ),
    );
  }
}
