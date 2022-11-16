import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import '../Controlador/controller.dart';

class acerca_de extends StatefulWidget {
  const acerca_de({super.key});

  @override
  State<acerca_de> createState() => _acerca_deState();
}

class _acerca_deState extends State<acerca_de> {
  controlador control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: EdgeInsets.all(20),
      child: ListView(
        children: [
          Text(
            "Desarrollo Equipo 3",
            style:
                GoogleFonts.raleway(fontSize: 18, fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Colors.indigoAccent,
            height: 10,
            indent: 15,
            endIndent: 15,
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(Icons.person_pin),
            title: Text(
              'Alexander Anillo Trocha',
              style: GoogleFonts.openSans(
                  fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(Icons.person_pin),
            title: Text(
              'Daniel Esteban Agudelo Duque',
              style: GoogleFonts.openSans(
                  fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(Icons.person_pin),
            title: Text(
              'Heyder Barbosa Orrego',
              style: GoogleFonts.openSans(
                  fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(Icons.person_pin),
            title: Text(
              'Lina Rocio Cardenas Fernandez',
              style: GoogleFonts.openSans(
                  fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(Icons.person_pin),
            title: Text(
              'Yuly Andrea Castro Torres',
              style: GoogleFonts.openSans(
                  fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    ));
  }
}
