import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:maskot_app/constant/color_constant.dart';

class FoundYourPets3 extends StatefulWidget {
  const FoundYourPets3({super.key});

  @override
  State<FoundYourPets3> createState() => _FoundYourPets3State();
}

class _FoundYourPets3State extends State<FoundYourPets3> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 0.10 * h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ColorHelper.kDarkBlue,
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
                      padding: const EdgeInsets.only(bottom: 10, left: 50),
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
              Container(
                height: 0.05 * h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ColorHelper.kGreen,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Center(
                    child: Text(
                      "Encontré a tu Mascota",
                      style: TextStyle(
                        color: ColorHelper.kDarkBlue,
                        fontWeight: FontWeight.w800,
                        fontSize: 0.05 * w,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    SizedBox(height: 0.01 * h),
                    Container(
                      height: 0.18 * h,
                      width: 0.37 * w,
                      decoration: BoxDecoration(
                        color: ColorHelper.kDarkBlue,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/images/image 36.png'),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    SizedBox(height: 0.00 * h),
                    Text(
                      "Fido",
                      style: TextStyle(
                        fontSize: 0.07 * w,
                        color: ColorHelper.kDarkBlue,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(height: 0.01 * h),
                    Text(
                      "Completar formulario si ha podido encontrar y poner a salvo a la mascota perdida",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 0.04 * w,
                        fontWeight: FontWeight.w900,
                        color: ColorHelper.kblack,
                      ),
                    ),
                    SizedBox(height: 0.02 * h),
                    TextField(
                      // controller: passwordcontroller,
                      decoration: InputDecoration(
                        constraints: BoxConstraints(maxHeight: 0.05 * h),
                        hintText: 'País',
                        suffixIcon: Icon(Icons.arrow_drop_down),
                        hintStyle: TextStyle(
                            fontSize: 0.04 * w,
                            color: ColorHelper.kblack,
                            fontWeight: FontWeight.w900),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 0.01 * h),
                    TextField(
                      // controller: passwordcontroller,
                      decoration: InputDecoration(
                        constraints: BoxConstraints(maxHeight: 0.05 * h),
                        hintText: 'Ciudad',
                        suffixIcon: Icon(Icons.arrow_drop_down),
                        hintStyle: TextStyle(
                            fontSize: 0.04 * w,
                            color: ColorHelper.kblack,
                            fontWeight: FontWeight.w900),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 0.01 * h),
                    TextField(
                      // controller: passwordcontroller,
                      decoration: InputDecoration(
                        constraints: BoxConstraints(maxHeight: 0.05 * h),
                        hintText: 'Distrito',
                        suffixIcon: Icon(Icons.arrow_drop_down),
                        hintStyle: TextStyle(
                            fontSize: 0.04 * w,
                            color: ColorHelper.kblack,
                            fontWeight: FontWeight.w900),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 0.01 * h),
                    TextField(
                      // controller: passwordcontroller,
                      decoration: InputDecoration(
                        constraints: BoxConstraints(maxHeight: 0.05 * h),
                        hintText: '',
                        suffixIcon: Icon(Icons.arrow_drop_down),
                        hintStyle: TextStyle(
                            fontSize: 0.04 * w,
                            color: ColorHelper.kblack,
                            fontWeight: FontWeight.w900),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 0.01 * h),
                    TextField(
                      maxLines: 5,
                      // controller: passwordcontroller,
                      decoration: InputDecoration(
                        constraints: BoxConstraints(
                          maxHeight: 0.12 * h,
                        ),
                        hintText:
                            'Ubicación exacta: Indicar donde encontró a la mascota',
                        hintStyle: TextStyle(
                          color: ColorHelper.kblack,
                          fontWeight: FontWeight.w800,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 0.01 * h),
                    Row(
                      children: [
                        TextField(
                            // controller: passwordcontroller,
                            decoration: InputDecoration(
                                constraints: BoxConstraints(
                                    maxHeight: 0.05 * h, maxWidth: 0.6 * w),
                                // hintText: 'Distrito',
                                hintStyle: TextStyle(
                                    color: ColorHelper.kblack,
                                    fontWeight: FontWeight.w800),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)))),
                        SizedBox(width: 10),
                        Container(
                          alignment: Alignment.center,
                          width: 0.28 * w,
                          height: 0.05 * h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ColorHelper.kGreen),
                          child: Text(
                            "Examinar...",
                            style: TextStyle(
                              fontSize: 15,
                              color: ColorHelper.kDarkBlue,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 0.02 * h),
                    MaterialButton(
                      height: 0.06 * h,
                      minWidth: 0.7 * w,
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              alignment: Alignment.topCenter,
                              insetPadding: EdgeInsets.only(top: 170),
                              child: Container(
                                height: 0.47 * h,
                                width: 0.7 * w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Column(
                                      children: [
                                        SizedBox(height: 0.02 * h),
                                        Text(
                                          "Tu reporte de mascota encontrada se ha enviado al dueño.  ¿Desea contactarlo?",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 0.06 * w,
                                          ),
                                        ),
                                        SizedBox(height: 0.02 * h),
                                        Container(
                                          height: 0.06 * h,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: ColorHelper.kGreen,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "Llamar al teléfono",
                                              style: TextStyle(
                                                fontSize: 0.05 * w,
                                                color: ColorHelper.kDarkBlue,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 0.02 * h),
                                        Container(
                                          height: 0.06 * h,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: ColorHelper.kGreen,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "Enviar whatsApp",
                                              style: TextStyle(
                                                fontSize: 0.05 * w,
                                                color: ColorHelper.kDarkBlue,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 0.02 * h),
                                        InkResponse(
                                          onTap: () {
                                            Get.back();
                                          },
                                          child: Container(
                                            height: 0.06 * h,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: ColorHelper.kDarkBlue,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Center(
                                              child: Text(
                                                "Regresar",
                                                style: TextStyle(
                                                  fontSize: 0.05 * w,
                                                  color: ColorHelper.kGreen,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                      color: ColorHelper.kGreen,
                      textColor: ColorHelper.kDarkGreen,
                      child: Text(
                        "Enviar al dueño de la mascota",
                        style: TextStyle(
                          fontSize: 0.04 * w,
                          color: ColorHelper.kDarkBlue,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
