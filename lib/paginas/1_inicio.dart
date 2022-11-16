import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Controlador/controller.dart';

class inicio extends StatefulWidget {
  const inicio({super.key});

  @override
  State<inicio> createState() => _inicioState();
}

class _inicioState extends State<inicio> {
  controlador control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
            padding: EdgeInsets.all(20),
            child: ListView(children: [
              Expanded(child: Image.asset('images/Logo-02.png')),
              Divider(
                color: Colors.amber[700]!,
                height: 10,
                indent: 15,
                endIndent: 15,
              ),
              Text(
                "Bienvenidos",
                style: GoogleFonts.adventPro(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.amber[700]!),
                textAlign: TextAlign.center,
              ),
              Divider(
                color: Colors.amber[700]!,
                height: 10,
                indent: 15,
                endIndent: 15,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                style: GoogleFonts.openSans(
                    fontSize: 14, fontWeight: FontWeight.w400),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 20,
              ),
            ])));
  }
}
