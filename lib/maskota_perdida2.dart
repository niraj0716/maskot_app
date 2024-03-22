import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:maskot_app/constant/color_constant.dart';
import 'package:maskot_app/found_your_pets3.dart';

class MaskotaPerdida2 extends StatefulWidget {
  const MaskotaPerdida2({super.key});

  @override
  State<MaskotaPerdida2> createState() => _MaskotaPerdida2State();
}

class _MaskotaPerdida2State extends State<MaskotaPerdida2> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
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
                    padding: const EdgeInsets.only(bottom: 10, left: 40),
                    child: Text(
                      "MIS MASCOTAS",
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
              height: 0.06 * h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorHelper.kGreen,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Perfil Mi Mascota",
                  style: TextStyle(
                    color: ColorHelper.kDarkGreen,
                    fontWeight: FontWeight.w900,
                    fontSize: 0.06 * w,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 0.06 * w,
                          backgroundColor: ColorHelper.kGreen,
                          child: Icon(
                            Icons.thumb_up_alt_rounded,
                            color: ColorHelper.kWhite,
                          ),
                        ),
                        Text(
                          "210",
                          style: TextStyle(
                            fontSize: 0.07 * w,
                            fontWeight: FontWeight.w900,
                            color: ColorHelper.kDarkGreen,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 0.02 * h),
                    Container(
                      height: 0.17 * h,
                      width: 0.35 * w,
                      decoration: BoxDecoration(
                        //color: ColorHelper.kDarkGreen,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/images/image 36.png'),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    SizedBox(height: 0.01 * h),
                    Text(
                      "Fido",
                      style: TextStyle(
                        fontSize: 0.06 * w,
                        color: ColorHelper.kDarkGreen,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 0.06 * h,
                      width: 0.12 * w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: ColorHelper.kDarkGreen,
                      ),
                      child: Icon(
                        CupertinoIcons.share,
                        color: ColorHelper.kWhite,
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 0.02 * h),
            Container(
              alignment: Alignment.center,
              height: 0.06 * h,
              width: 0.6 * w,
              decoration: BoxDecoration(
                border: Border.all(color: ColorHelper.kRed),
                borderRadius: BorderRadius.circular(5),
                color: ColorHelper.kWhite,
              ),
              child: Text(
                "PERDIDO",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 0.07 * w,
                  color: ColorHelper.kRed,
                ),
              ),
            ),
            SizedBox(height: 0.02 * h),
            Text(
              "RECOMPENSA: US 100.00",
              style: TextStyle(
                fontSize: 0.06 * w,
                fontWeight: FontWeight.w900,
                color: ColorHelper.kDarkGreen,
              ),
            ),
            SizedBox(height: 0.02 * h),
            InkResponse(
              onTap: () {
                Get.to(FoundYourPets3());
              },
              child: Container(
                alignment: Alignment.center,
                height: 0.06 * h,
                width: 0.60 * w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: ColorHelper.kGreen,
                ),
                child: Text(
                  "Encontré a tu mascota",
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 0.05 * w,
                      color: ColorHelper.kDarkGreen),
                ),
              ),
            ),
            SizedBox(height: 0.05 * h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Raza",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 0.04 * w,
                          color: ColorHelper.kDarkGreen,
                        ),
                      ),
                      SizedBox(width: 0.43 * w),
                      Text(
                        "Labrador",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 0.04 * w,
                          color: ColorHelper.kDarkGreen,
                        ),
                      ),
                    ],
                  ),
                  Divider(thickness: 2),
                  Row(
                    children: [
                      Text(
                        "Geneero",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 0.04 * w,
                          color: ColorHelper.kDarkGreen,
                        ),
                      ),
                      SizedBox(width: 0.37 * w),
                      Text(
                        "Macho",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 0.04 * w,
                          color: ColorHelper.kDarkGreen,
                        ),
                      ),
                    ],
                  ),
                  Divider(thickness: 2),
                  Row(
                    children: [
                      Text(
                        "Edad",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 0.04 * w,
                          color: ColorHelper.kDarkGreen,
                        ),
                      ),
                      SizedBox(width: 0.43 * w),
                      Text(
                        "1 año 2 meses",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 0.04 * w,
                          color: ColorHelper.kDarkGreen,
                        ),
                      ),
                    ],
                  ),
                  Divider(thickness: 2),
                  Row(
                    children: [
                      Text(
                        "Color",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 0.04 * w,
                          color: ColorHelper.kDarkGreen,
                        ),
                      ),
                      SizedBox(width: 0.43 * w),
                      Text(
                        "Café / Manto Negro",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 0.04 * w,
                          color: ColorHelper.kDarkGreen,
                        ),
                      ),
                    ],
                  ),
                  Divider(thickness: 2),
                  Row(
                    children: [
                      Text(
                        "Condición médica",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 0.04 * w,
                          color: ColorHelper.kDarkGreen,
                        ),
                      ),
                      SizedBox(width: 0.2 * w),
                      Text(
                        "Alergico a medicas\nCalculos\nTumor en tratamiento",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 0.04 * w,
                          color: ColorHelper.kDarkGreen,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
