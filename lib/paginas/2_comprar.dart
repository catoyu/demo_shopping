import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Controlador/controller.dart';

class comprar extends StatefulWidget {
  const comprar({super.key});

  @override
  State<comprar> createState() => _comprarState();
}

class _comprarState extends State<comprar> {
  controlador control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Obx(() => ListView.builder(
              //Enmarco en variable reactiva
              itemCount: control.pro.length, //lista de objetos + conteo de obj,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Image.asset(control.pro[index].imagen),
                  title: Text(
                      control.pro[index].nombre +
                          " | " +
                          control.pro[index].precio.toString(),
                      style: GoogleFonts.openSans(
                          fontSize: 14, fontWeight: FontWeight.w300)),
                  trailing: Text(
                    control.pro[index].cantidad.toString(),
                    style: GoogleFonts.adventPro(
                        fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.amber[700]!,
                            borderRadius: BorderRadius.all(
                              Radius.circular(50.0),
                            )),
                        //margin: EdgeInsets.all(0.5),
                        // padding: EdgeInsets.all(2.0),
                        child: new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 6.0,
                              ),
                              IconButton(
                                  onPressed: () {
                                    int nuevaCantidad =
                                        control.pro[index].cantidad + 1;
                                    control.cambiarCant(index, nuevaCantidad);
                                    control.pro.refresh();
                                  },
                                  icon: Icon(
                                    Icons.add_rounded,
                                    size: 20.0,
                                    color: Colors.orange[900]!,
                                  )),
                              VerticalDivider(
                                color: Colors.orange[900]!,
                              ),
                              IconButton(
                                  onPressed: () {
                                    int nuevaCantidad =
                                        control.pro[index].cantidad - 1;
                                    if (nuevaCantidad < 0) {
                                      nuevaCantidad = 0;
                                    }
                                    control.cambiarCant(index, nuevaCantidad);
                                    control.pro.refresh();
                                  },
                                  icon: Icon(
                                    Icons.remove_rounded,
                                    size: 20.0,
                                    color: Colors.orange[900]!,
                                  )),
                            ]),
                      ),
                    ],
                  ),
                );
              },
            )));
  }
}
