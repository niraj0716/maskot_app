import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'constant/color_constant.dart';

class AgregarVacunas1 extends StatefulWidget {
  const AgregarVacunas1({super.key});

  @override
  State<AgregarVacunas1> createState() => _AgregarVacunas1State();
}

class _AgregarVacunas1State extends State<AgregarVacunas1> {
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
                      padding: const EdgeInsets.only(bottom: 25, left: 40),
                      child: Text(
                        "Descripción",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 0.06 * w,
                          color: ColorHelper.kblack,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 0.06 * h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ColorHelper.kGreen,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Mis Eventos",
                    style: TextStyle(
                      color: ColorHelper.kDarkGreen,
                      fontWeight: FontWeight.w900,
                      fontSize: 0.06 * w,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    SizedBox(height: 0.03 * h),
                    TextField(
                      // controller: passwordcontroller,
                      decoration: InputDecoration(
                        constraints: BoxConstraints(maxHeight: 0.07 * h),
                        hintText: 'Nombre de evento',
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
                            hintText: 'Fecha',
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
                      ],
                    ),
                    SizedBox(height: 0.02 * h),
                    TextField(
                      maxLines: 10,
                      // controller: passwordcontroller,
                      decoration: InputDecoration(
                        hintMaxLines: 20,
                        constraints: BoxConstraints(maxHeight: 0.20 * h),
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
                    SizedBox(
                      height: 0.02 * h,
                    ),
                    Container(
                      height: 0.07 * h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: ColorHelper.kGreen,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Ingresar Evento",
                          style: TextStyle(
                            fontSize: 0.06 * w,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 0.02 * h,
                    ),
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
