import 'package:flutter/material.dart';
import 'package:reto_02/Controlador/controller.dart';
import 'package:reto_02/UI/home.dart';
import 'package:get/get.dart';

void main() {
  Get.put(controlador());
  runApp(const MyApp());
}
