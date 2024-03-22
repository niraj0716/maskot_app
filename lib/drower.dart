import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:maskot_app/constant/color_constant.dart';
import 'package:maskot_app/services.dart';

class Draw extends StatefulWidget {
  const Draw({super.key});

  @override
  State<Draw> createState() => _DrawState();
}

class _DrawState extends State<Draw> {
  List name = [
    'País',
    'Departamento',
    'Provincia',
    'Distrito',
    'Teléfono',
    'Directorio',
    'Mascotas',
    'Servicios',
    'Cambiar contraseña',
  ];
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Drawer(
        backgroundColor: ColorHelper.kDarkBlue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 260, top: 10),
              child: Icon(
                Icons.edit_calendar_sharp,
                color: ColorHelper.kGreen,
                size: 0.07 * w,
              ),
            ),
            SizedBox(height: 40),
            Center(
              child: CircleAvatar(
                backgroundColor: ColorHelper.kGreen,
                maxRadius: 0.17 * w,
                backgroundImage:
                    AssetImage("assets/images/Clip path group (2).png"),
              ),
            ),
            SizedBox(height: 0.02 * h),
            Center(
              child: Text(
                'Jhon Carrasco',
                style: TextStyle(
                  color: ColorHelper.kGreen,
                  fontWeight: FontWeight.w900,
                  fontSize: 0.08 * w,
                ),
              ),
            ),
            SizedBox(height: 0.01 * h),
            Divider(
              color: ColorHelper.kGreen,
              thickness: 1,
            ),
            SizedBox(height: 1),
            ListView.builder(
              itemCount: name.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      SizedBox(height: 0.01 * h),
                      InkResponse(
                        onTap: () {
                          index == 5 ? Get.to(Services()) : SizedBox();
                        },
                        child: Row(
                          children: [
                            Text(
                              name[index],
                              style: TextStyle(
                                fontSize: 0.08 * w,
                                color: ColorHelper.kGreen,
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: ColorHelper.kGreen,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 210),
              child: Text(
                'Cerrar',
                style: TextStyle(
                  fontSize: 0.07 * w,
                  color: ColorHelper.kGreen,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
