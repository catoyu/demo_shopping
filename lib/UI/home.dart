import 'package:flutter/material.dart';
import 'package:reto_02/Controlador/controller.dart';
import 'package:reto_02/UI/menu.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reto_02/paginas/1_inicio.dart';
import 'package:reto_02/paginas/2_comprar.dart';
import 'package:reto_02/paginas/3_misproductos.dart';
import 'package:reto_02/paginas/4_acerca_de.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Shopping App',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepOrange,
      ),
      home: const MyHomePage(title: 'Motorbike Shop'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

List paginas = [inicio(), comprar(), misproductos(), acerca_de()];

class _MyHomePageState extends State<MyHomePage> {
  controlador Control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,
            style: GoogleFonts.adventPro(
                fontSize: 30, fontWeight: FontWeight.w700)),
        centerTitle: true,
      ),
      drawer: menu(),
      body: Obx(() => paginas[Control.posPagina]),
    );
  }
}
