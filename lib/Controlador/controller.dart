import 'package:get/get.dart';
import 'package:reto_02/clases/productos.dart';
import 'package:reto_02/paginas/3_misproductos.dart';

class controlador extends GetxController {
  final _posPagina = 0.obs;
  final pro = <productos>[].obs;

  @override
  void onInit() {
    pro.add(productos(1, "Botas Unisex", 'images/botas.png', 0, 120000));
    pro.add(productos(
        2, "Rompevientos Caballero", 'images/caballero_vf.png', 0, 80000));
    pro.add(productos(3, "Rompevientos Dama", 'images/dama_af.png', 0, 80000));
    pro.add(productos(4, "Casco Wolf", 'images/casco_ha.png', 0, 250000));
    pro.add(productos(5, "Casco Pavoreal", 'images/casco_mp.png', 0, 250000));

    super.onInit();
  }

  void cambiarpos(int x) {
    _posPagina.value = x;
  }

  int get posPagina => _posPagina.value;

  void cambiarCant(int posicion, int valor) {
    pro[posicion].cantidad = valor;
  }

  int calcularTotal() {
    int total = 0;
    for (int i = 0; i < pro.length; i++) {
      total = total + pro[i].cantidad * pro[i].precio;
    }
    return total;
  }

  void limpiar() {
    for (int i = 0; i < pro.length; i++) {
      pro[i].cantidad = 0;
    }
    calcularTotal();
  }
}
