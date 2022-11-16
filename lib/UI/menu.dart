import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import '../Controlador/controller.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  controlador Control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                opacity: 80.0,
                image: NetworkImage(
                  'https://www.wallpaperup.com/uploads/wallpapers/2019/07/14/1330247/3bedea9b49eb9291e704075b2bd34a1a-500.jpg',
                ),
                fit: BoxFit.fill,
              ),
              color: Colors.indigo,
            ),
            accountName: Text("Jhon Doe",
                style: GoogleFonts.openSans(
                    fontSize: 14, fontWeight: FontWeight.w400)),
            accountEmail: Text("doej@mailto.com",
                style: GoogleFonts.openSans(
                    fontSize: 14, fontWeight: FontWeight.w400)),
            currentAccountPicture: CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                  'https://2.bp.blogspot.com/-wUD2SGHiBCg/XGVk3D2_6FI/AAAAAAACkqc/LWNsgSdN5YwQNqy7IsRj95GrjqauK5ZzACLcBGAs/s1600/thispersondoesnotexist-2.jpg'),
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.amber[700]!,
                ),
                title: Text(
                  'Inicio',
                  style: GoogleFonts.openSans(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
                onTap: () {
                  Navigator.pop(context);
                  Control.cambiarpos(0);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.monetization_on_rounded,
                  color: Colors.amber[700]!,
                ),
                title: Text(
                  'Comprar',
                  style: GoogleFonts.openSans(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
                onTap: () {
                  Navigator.pop(context);
                  Control.cambiarpos(1);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.amber[700]!,
                ),
                title: Text(
                  'Mis productos',
                  style: GoogleFonts.openSans(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
                onTap: () {
                  Navigator.pop(context);
                  Control.cambiarpos(2);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.amber[700]!,
                ),
                title: Text(
                  'Acerca de...',
                  style: GoogleFonts.openSans(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
                onTap: () {
                  Navigator.pop(context);
                  Control.cambiarpos(3);
                },
              ),
            ],
          )),
          Divider(
            color: Colors.amber[700]!,
            height: 10,
            indent: 15,
            endIndent: 15,
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            dense: true,
            title: Text("Cerrar sesión"),
            trailing: Text(
              "Versión 1.0",
              style: GoogleFonts.openSans(
                  fontWeight: FontWeight.bold, fontSize: 12),
            ),
            leading: Icon(Icons.exit_to_app_rounded),
          ),
        ],
      ),
    ));
  }
}
