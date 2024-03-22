import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:maskot_app/perfil_free.dart';
import 'package:maskot_app/private_suscripted_profile.dart';
import 'package:maskot_app/services.dart';
import 'package:maskot_app/services2.dart';
import 'package:maskot_app/services3.dart';
import 'package:maskot_app/services_list.dart';
import 'package:maskot_app/splesh_screen.dart';
import 'package:maskot_app/suscribed_public.dart';

import 'addImage.dart';
import 'agregar_vacunas.dart';
import 'agregar_vacunas1.dart';
import 'blog.dart';
import 'blog_details.dart';
import 'bottom_navgation_bar.dart';
import 'creat_profil_da_moscots.dart';
import 'create_account.dart';
import 'drower.dart';
import 'fomulario_de_mascota_perdida1.dart';
import 'forgot_password.dart';
import 'found_pats.dart';
import 'found_your_pet.dart';
import 'lista_de_mascotas.dart';
import 'login.dart';
import 'lost_pet_private_pr.dart';
import 'lost_pet_public_profile.dart';
import 'maskota_perdida2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // theme: ThemeData(fontFamily: "Biryani"),
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
