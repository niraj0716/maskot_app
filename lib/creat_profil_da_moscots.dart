import 'dart:io';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:maskot_app/constant/color_constant.dart';

import 'agregar_vacunas.dart';
import 'agregar_vacunas1.dart';

class CrearPerfilDeMascota extends StatefulWidget {
  const CrearPerfilDeMascota({super.key});

  @override
  State<CrearPerfilDeMascota> createState() => _CrearPerfilDeMascotaState();
}

class _CrearPerfilDeMascotaState extends State<CrearPerfilDeMascota> {
  XFile? _image;
  final ImagePicker _picker = ImagePicker();
  Future<void> _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = pickedImage;
    });
  }

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
                height: 0.10 * h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ColorHelper.kDarkGreen,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/maskot.png",
                      width: 0.4 * w,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Text(
                        "Peru",
                        style: TextStyle(
                          fontSize: 0.06 * w,
                          color: ColorHelper.kWhite,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20, left: 40),
                      child: Text(
                        "MIS MASCOTAS",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 0.06 * w,
                          color: ColorHelper.kGreen,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 0.02 * h),
              Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 100,
                      width: 110,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 2,
                            color: ColorHelper.kblack,
                          )),
                      child: _image == null
                          ? Center(
                              child: ElevatedButton(
                              onPressed: _pickImage,
                              child: Text(""),
                            ))
                          : CircleAvatar(
                              radius: 110,
                              backgroundImage: FileImage(
                                File(
                                  _image!.path,
                                ),
                              ),
                            ),
                    ),
                    Positioned(
                      bottom: -20,
                      right: -0,
                      child: Container(
                        height: 0.09 * h,
                        width: 0.09 * w,
                        decoration: BoxDecoration(
                          color: ColorHelper.kDarkGreen,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: IconButton(
                            onPressed: () async {
                              final XFile? pickedImage =
                                  await _picker.pickImage(
                                source: ImageSource.gallery,
                                maxHeight: 50,
                                maxWidth: 40,
                              );
                              setState(() {
                                _image = pickedImage;
                              });
                            },
                            icon: Icon(
                              Icons.add,
                              color: ColorHelper.kWhite,
                              size: 0.05 * w,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    SizedBox(height: 0.03 * h),
                    TextField(
                      // controller: passwordcontroller,
                      decoration: InputDecoration(
                        constraints: BoxConstraints(maxHeight: 0.07 * h),
                        hintText: 'Nombre de mascota',
                        hintStyle: TextStyle(
                          fontSize: 0.05 * w,
                          fontWeight: FontWeight.w400,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 0.02 * h),
                    TextField(
                      // controller: passwordcontroller,
                      decoration: InputDecoration(
                        constraints: BoxConstraints(maxHeight: 0.07 * h),
                        hintText: 'Raza',
                        hintStyle: TextStyle(
                          fontSize: 0.05 * w,
                          fontWeight: FontWeight.w400,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 0.02 * h),
                    Row(
                      children: [
                        TextField(
                          // controller: passwordcontroller,
                          decoration: InputDecoration(
                            constraints: BoxConstraints(
                              maxWidth: 0.45 * w,
                              maxHeight: 0.07 * h,
                            ),
                            hintText: '',
                            hintStyle: TextStyle(
                              fontSize: 0.05 * w,
                              fontWeight: FontWeight.w400,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        Spacer(),
                        TextField(
                          // controller: passwordcontroller,
                          decoration: InputDecoration(
                            constraints: BoxConstraints(
                              maxWidth: 0.45 * w,
                              maxHeight: 0.07 * h,
                            ),
                            hintText: 'Género',
                            hintStyle: TextStyle(
                              fontSize: 0.05 * w,
                              fontWeight: FontWeight.w400,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 0.02 * h),
                    Row(
                      children: [
                        TextField(
                          // controller: passwordcontroller,
                          decoration: InputDecoration(
                            constraints: BoxConstraints(
                              maxWidth: 0.45 * w,
                              maxHeight: 0.07 * h,
                            ),
                            hintText: 'Color',
                            hintStyle: TextStyle(
                              fontSize: 0.05 * w,
                              fontWeight: FontWeight.w400,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        Spacer(),
                        TextField(
                          // controller: passwordcontroller,
                          decoration: InputDecoration(
                            constraints: BoxConstraints(
                              maxWidth: 0.45 * w,
                              maxHeight: 0.07 * h,
                            ),
                            hintText: 'Origen',
                            hintStyle: TextStyle(
                              fontSize: 0.05 * w,
                              fontWeight: FontWeight.w400,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 0.02 * h),
                    Row(
                      children: [
                        TextField(
                          // controller: passwordcontroller,
                          decoration: InputDecoration(
                            constraints: BoxConstraints(
                              maxWidth: 0.45 * w,
                              maxHeight: 0.07 * h,
                            ),
                            hintText: 'Fecha de nacimiento',
                            suffixIcon: Icon(Icons.calendar_month_sharp),
                            hintStyle: TextStyle(
                              fontSize: 0.05 * w,
                              fontWeight: FontWeight.w400,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        Spacer(),
                        TextField(
                          // controller: passwordcontroller,
                          decoration: InputDecoration(
                            constraints: BoxConstraints(
                              maxWidth: 0.45 * w,
                              maxHeight: 0.07 * h,
                            ),
                            hintText: 'Teléfono',
                            hintStyle: TextStyle(
                              fontSize: 0.05 * w,
                              fontWeight: FontWeight.w400,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 0.02 * h),
                    TextField(
                      maxLines: 10,
                      // controller: passwordcontroller,
                      decoration: InputDecoration(
                        constraints: BoxConstraints(maxHeight: 0.19 * h),
                        hintText: 'Condición médica',
                        hintStyle: TextStyle(
                          fontSize: 0.05 * w,
                          fontWeight: FontWeight.w400,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 0.02 * h),
                    TextField(
                      maxLines: 10,
                      // controller: passwordcontroller,
                      decoration: InputDecoration(
                        hintMaxLines: 20,
                        constraints: BoxConstraints(maxHeight: 0.20 * h),
                        //hintText: 'Condición médica',
                        hintStyle: TextStyle(
                          fontSize: 0.05 * w,
                          fontWeight: FontWeight.w400,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 0.02 * h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 0.05 * h,
                          width: 0.27 * w,
                          decoration: BoxDecoration(
                              color: ColorHelper.kGreen,
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                            child: InkResponse(
                              onTap: () {
                                Get.to(AgregarVacunas1());
                              },
                              child: Text(
                                "Eventos",
                                style: TextStyle(
                                  fontSize: 0.04 * w,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 0.05 * h,
                          width: 0.27 * w,
                          decoration: BoxDecoration(
                            color: ColorHelper.kDarkGreen,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: InkResponse(
                              onTap: () {
                                Get.to(AgregarVacunas());
                              },
                              child: Text(
                                "Vacunas",
                                style: TextStyle(
                                  fontSize: 0.04 * w,
                                  color: ColorHelper.kGreen,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 0.05 * h,
                          width: 0.27 * w,
                          decoration: BoxDecoration(
                            color: ColorHelper.kGreen,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.image_outlined,
                                  size: 0.07 * w,
                                  color: ColorHelper.kDarkGreen,
                                ),
                                Text(
                                  "Galería",
                                  style: TextStyle(
                                    fontSize: 0.04 * w,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 0.02 * h),
                    Container(
                      height: 0.07 * h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: ColorHelper.kGreen,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Ingresar Mascota",
                          style: TextStyle(
                            fontSize: 0.06 * w,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
