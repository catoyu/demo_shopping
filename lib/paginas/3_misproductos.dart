import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Controlador/controller.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class misproductos extends StatefulWidget {
  const misproductos({super.key});

  @override
  State<misproductos> createState() => _productosState();
}

class _productosState extends State<misproductos> {
  controlador control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
            child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: control.pro.length,
              itemBuilder: (BuildContext context, int index) {
                return control.pro[index].cantidad == 0
                    ? Text("")
                    : ListTile(
                        leading: Image.asset(control.pro[index].imagen),
                        title: Text(control.pro[index].nombre),
                        subtitle: Text("Precio: " +
                            control.pro[index].precio.toString() +
                            " | Cantidad: " +
                            control.pro[index].cantidad.toString()),
                        trailing: Text(
                            (control.pro[index].cantidad *
                                    control.pro[index].precio)
                                .toString(),
                            style: GoogleFonts.openSans(
                                fontSize: 25, fontWeight: FontWeight.w600)));
              },
            )),
            Divider(
              color: Colors.amber[700]!,
              height: 10,
              indent: 15,
              endIndent: 15,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                width: 400,
                height: 40,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.amber[700]!),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Total a pagar: ' + control.calcularTotal().toString(),
                      style: GoogleFonts.adventPro(
                          fontSize: 25, fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                      textScaleFactor: 1,
                    ),
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Divider(
              color: Colors.amber[700]!,
              height: 10,
              indent: 15,
              endIndent: 15,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
                onPressed: () {
                  Alert(
                      type: AlertType.success,
                      context: context,
                      title: '¡COMPRA REALIZADA CON EXITO!',
                      desc:
                          'Felicidades, acabas de adquirir productos hechos por manos colombianas, que te acompañaran en tus nuevas aventuras en el camino.',
                      buttons: [
                        DialogButton(
                            child: Text(
                              "Cerrar",
                              style: GoogleFonts.openSans(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                            radius: BorderRadius.circular(5.0),
                            color: Colors.amber[700]!,
                            onPressed: () {
                              control.limpiar();
                              Navigator.pop(context);
                              control.cambiarpos(0);
                            })
                      ]).show();
                },
                icon: Icon(Icons.shopping_cart_checkout_rounded),
                label: Text(
                  "Realizar compra",
                  style: GoogleFonts.openSans(
                      fontSize: 14, fontWeight: FontWeight.w500),
                )),
            SizedBox(
              height: 20,
            ),
          ],
        )));
  }
}
