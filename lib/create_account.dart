import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 0.09 * h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff094454),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/maskot.png",
                      width: 0.3 * w,
                    ),
                  ],
                ),
              ),
              Container(
                height: 0.05 * h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffB3D208),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 9, vertical: 6),
                  child: Text(
                    "Crear Cuenta",
                    style: TextStyle(
                      color: Color(0xff094454),
                      fontWeight: FontWeight.w700,
                      fontSize: 0.06 * w,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 0.02 * h),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xff094454),
                      border: Border.all(
                        color: Color(0xffB3D208),
                        width: 7,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      backgroundColor: Color(0xff094454),
                      radius: 0.13 * w,
                    ),
                  ),
                  Positioned(
                    bottom: -0.00 * h,
                    right: 0.02 * w,
                    child: Icon(
                      Icons.camera_alt,
                      size: 0.08 * w,
                      color: Color(0xff094454),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Nombres",
                  constraints: BoxConstraints(maxHeight: 0.05 * h),
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xff094454),
                    fontSize: 0.05 * w,
                  ),
                  prefixIcon: Icon(
                    Icons.person,
                    size: 25,
                    color: Color(0xffB3D208),
                  ),
                ),
              ),
              SizedBox(
                height: 0.0 * h,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Teléfono",
                  constraints: BoxConstraints(maxHeight: 0.05 * h),
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xff094454),
                    fontSize: 0.05 * w,
                  ),
                  prefixIcon: Icon(
                    Icons.phone_android_sharp,
                    size: 25,
                    color: Color(0xffB3D208),
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                  constraints: BoxConstraints(maxHeight: 0.05 * h),
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xff094454),
                    fontSize: 0.05 * w,
                  ),
                  prefixIcon: Icon(
                    Icons.mail,
                    size: 25,
                    color: Color(0xffB3D208),
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Contraseña",
                  constraints: BoxConstraints(maxHeight: 0.05 * h),
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xff094454),
                    fontSize: 0.05 * w,
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                    size: 25,
                    color: Color(0xffB3D208),
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "País",
                  constraints: BoxConstraints(maxHeight: 0.05 * h),
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xff094454),
                    fontSize: 0.05 * w,
                  ),
                  prefixIcon: Icon(
                    Icons.flag,
                    size: 25,
                    color: Color(0xffB3D208),
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Departamento",
                  constraints: BoxConstraints(maxHeight: 0.05 * h),
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xff094454),
                    fontSize: 0.05 * w,
                  ),
                  prefixIcon: Icon(
                    Icons.location_on,
                    size: 25,
                    color: Color(0xffB3D208),
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Provincia",
                  constraints: BoxConstraints(maxHeight: 0.05 * h),
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xff094454),
                    fontSize: 0.05 * w,
                  ),
                  prefixIcon: Icon(
                    Icons.location_on,
                    size: 25,
                    color: Color(0xffB3D208),
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Distrito",
                  constraints: BoxConstraints(maxHeight: 0.05 * h),
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xff094454),
                    fontSize: 0.05 * w,
                  ),
                  prefixIcon: Icon(
                    Icons.location_on,
                    size: 25,
                    color: Color(0xffB3D208),
                  ),
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    value: isCheck,
                    onChanged: (value) {
                      setState(
                        () {
                          isCheck = !isCheck;
                        },
                      );
                    },
                  ),
                  Text(
                    "Acepta los términos y condiciones",
                    style: TextStyle(
                      color: Color(0xff094454),
                      fontSize: 0.04 * w,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: isCheck,
                    onChanged: (value) {
                      setState(
                        () {
                          isCheck = !isCheck;
                        },
                      );
                    },
                  ),
                  Text(
                    "Acepta las políticas de privacidad",
                    style: TextStyle(
                      color: Color(0xff094454),
                      fontSize: 0.04 * w,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 0.01 * h),
              InkResponse(
                onTap: () {
                  Get.back();
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    width: double.infinity,
                    height: 0.06 * h,
                    decoration: BoxDecoration(
                      color: Color(0xffB3D208),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Crear Cuenta",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                          color: Color(0xff094454),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
