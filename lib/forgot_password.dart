import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff094454),
      body: SingleChildScrollView(
          child: SafeArea(
        child: Column(
          children: [
            Container(
              height: 0.11 * h,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/maskot.png",
                    width: 0.4 * w,
                  ),
                ],
              ),
            ),
            Container(
              height: 0.06 * h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffB3D208),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Restablecer la contraseña",
                  style: TextStyle(
                    color: Color(0xff094454),
                    fontWeight: FontWeight.w700,
                    fontSize: 0.06 * w,
                  ),
                ),
              ),
            ),
            SizedBox(height: 0.02 * h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Si olvidaste tu contraseña puedes restablecerla ingresando tu correo de registro. ",
                    style: TextStyle(
                      fontSize: 0.06 * w,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffF3F4F4),
                    ),
                  ),
                  SizedBox(height: 0.04 * h),
                  Text(
                    "Correo eléctronico",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 0.05 * w,
                      color: Color(0xffF3F4F4),
                    ),
                  ),
                  SizedBox(height: 0.01 * h),
                  TextField(
                    textAlignVertical: TextAlignVertical.center,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                      color: Color(0xffB3D208),
                    ),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      constraints: BoxConstraints(
                        maxHeight: 0.07 * h,
                        maxWidth: 1.50 * w,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 0.06 * h,
                  ),
                  InkResponse(
                    onTap: () {
                      Get.back();
                    },
                    child: Center(
                      child: Container(
                        height: 0.08 * h,
                        width: 0.9 * w,
                        decoration: BoxDecoration(
                          color: Color(0xffB3D208),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text(
                            "Enviar contraseña temporal",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: Color(0xff094454),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
