import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'constant/color_constant.dart';
import 'found_your_pets3.dart';

class LostPetPublicProfile extends StatefulWidget {
  const LostPetPublicProfile({super.key});

  @override
  State<LostPetPublicProfile> createState() => _LostPetPublicProfileState();
}

class _LostPetPublicProfileState extends State<LostPetPublicProfile> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.red.shade100,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 0.09 * h,
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
                    Spacer(),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 10, top: 5),
                      child: Text(
                        textAlign: TextAlign.end,
                        "MIS\nMASCOTAS",
                        style: TextStyle(
                          fontSize: 0.06 * w,
                          fontFamily: "Behover",
                          color: ColorHelper.kGreen,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 0.01 * h),
              Row(
                children: [
                  SizedBox(width: 0.25 * w),
                  Column(
                    children: [
                      SizedBox(
                        height: 0.01 * h,
                      ),
                      Image.asset(
                        "assets/images/image 36.png",
                        scale: 1.2,
                      ),
                      SizedBox(
                        height: 0.02 * h,
                      ),
                      Text(
                        "Fido",
                        style: TextStyle(
                          fontSize: 0.07 * w,
                          color: ColorHelper.kDarkGreen,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 0.01 * h),
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
              SizedBox(
                height: 0.03 * h,
              ),
              Text(
                "RECOMPENSA: US \$ 100.00",
                style: TextStyle(
                  fontSize: 22,
                  color: ColorHelper.kDarkGreen,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 0.01 * h,
              ),
              InkResponse(
                // onTap: () {
                //   Get.to(FoundYourPets3());
                // },
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
              SizedBox(
                height: 0.02 * h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 0.02 * h),
                      Row(
                        children: [
                          Text(
                            "Raza",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontFamily: "Segoe",
                                color: ColorHelper.kDarkGreen,
                                fontSize: 15),
                          ),
                          SizedBox(width: 0.40 * w),
                          Text(
                            "Labrador",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: ColorHelper.kDarkGreen,
                                fontFamily: "Segoe"),
                          )
                        ],
                      ),
                      Divider(color: Colors.grey),
                      Row(
                        children: [
                          Text(
                            "Género",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontFamily: "Segoe",
                                fontSize: 15),
                          ),
                        ],
                      ),
                      Divider(color: Colors.grey),
                      Row(
                        children: [
                          Text(
                            "Edad",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontFamily: "Segoe",
                                color: ColorHelper.kblack,
                                fontSize: 15),
                          ),
                          SizedBox(width: 0.40 * w),
                          Text(
                            "4 años",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: ColorHelper.kblack,
                                fontFamily: "Segoe"),
                          )
                        ],
                      ),
                      Divider(color: Colors.grey),
                      Row(
                        children: [
                          Text(
                            "Color",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontFamily: "Segoe",
                                color: ColorHelper.kDarkGreen,
                                fontSize: 15),
                          ),
                          SizedBox(width: 0.39 * w),
                          Text(
                            "Café / Manto Negro",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: ColorHelper.kDarkGreen,
                                fontFamily: "Segoe"),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 0.03 * h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Condición médica",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: ColorHelper.kDarkGreen,
                                fontFamily: "Segoe",
                                fontSize: 15),
                          ),
                          SizedBox(width: 0.17 * w),
                          Text(
                            "Alergico a medicas\nCalculos\nTumor en tratamient",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: ColorHelper.kDarkGreen,
                                fontFamily: "Segoe"),
                          )
                        ],
                      ),
                      Divider(color: Colors.grey),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Descripción",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontFamily: "Segoe",
                                color: ColorHelper.kDarkGreen,
                                fontSize: 15),
                          ),
                          SizedBox(width: 0.28 * w),
                          Text(
                            "Es muy juguetón y\nmanso, le gustan los \njuguetes de\ncuerda, en ocasiones",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: ColorHelper.kDarkGreen,
                                fontFamily: "Segoe"),
                          )
                        ],
                      ),
                      Container(),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 0.02 * h),
              Container(
                height: 0.07 * h,
                width: double.infinity,
                color: ColorHelper.kGreen,
                child: Row(
                  children: [
                    SizedBox(width: 0.05 * w),
                    Text(
                      "Vacunas",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 23,
                        color: ColorHelper.kDarkGreen,
                      ),
                    ),
                    SizedBox(width: 0.60 * w),
                    Text(
                      "4",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 23,
                        color: ColorHelper.kDarkGreen,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 0.05 * h,
                width: double.infinity,
                color: Colors.grey[600],
                child: Row(
                  children: [
                    SizedBox(width: 0.08 * w),
                    Text(
                      "Vacuna",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 19,
                          color: ColorHelper.kWhite),
                    ),
                    SizedBox(width: 0.38 * w),
                    Text(
                      "Fecha",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 19,
                          color: ColorHelper.kWhite),
                    ),
                  ],
                ),
              ),
              Container(
                height: 0.05 * h,
                width: double.infinity,
                color: ColorHelper.kWhite,
                child: Row(
                  children: [
                    SizedBox(width: 0.04 * w),
                    Text(
                      "Distemper 1ra dosis",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: ColorHelper.kDarkGreen),
                    ),
                    SizedBox(width: 0.16 * w),
                    Text(
                      "01/12/2021",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: ColorHelper.kDarkGreen),
                    ),
                  ],
                ),
              ),
              Container(
                height: 0.05 * h,
                width: double.infinity,
                color: ColorHelper.kgray,
                child: Row(
                  children: [
                    SizedBox(width: 0.04 * w),
                    Text(
                      "Parvovirus dosis única",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: ColorHelper.kDarkGreen),
                    ),
                    SizedBox(width: 0.11 * w),
                    Text(
                      "01/12/2021",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: ColorHelper.kDarkGreen),
                    ),
                  ],
                ),
              ),
              Container(
                height: 0.05 * h,
                width: double.infinity,
                color: ColorHelper.kWhite,
                child: Row(
                  children: [
                    SizedBox(width: 0.04 * w),
                    Text(
                      "Distemper 2da dosis",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: ColorHelper.kDarkGreen),
                    ),
                    SizedBox(width: 0.15 * w),
                    Text(
                      "01/12/2021",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: ColorHelper.kDarkGreen),
                    ),
                  ],
                ),
              ),
              Container(
                height: 0.05 * h,
                width: double.infinity,
                color: ColorHelper.kgray,
                child: Row(
                  children: [
                    SizedBox(width: 0.04 * w),
                    Text(
                      "Rabia 1ra dosis",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: ColorHelper.kDarkGreen),
                    ),
                    SizedBox(width: 0.26 * w),
                    Text(
                      "01/12/2021",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: ColorHelper.kDarkGreen),
                    ),
                  ],
                ),
              ),
              Container(
                height: 0.06 * h,
                width: double.infinity,
                color: ColorHelper.kGreen,
                child: Row(
                  children: [
                    SizedBox(width: 0.05 * w),
                    Text(
                      "Eventos",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 23,
                          color: ColorHelper.kDarkGreen),
                    ),
                  ],
                ),
              ),
              Container(
                height: 0.05 * h,
                width: double.infinity,
                color: Colors.grey[600],
                child: Row(
                  children: [
                    SizedBox(width: 0.30 * w),
                    Text(
                      "Evento",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          color: ColorHelper.kWhite),
                    ),
                  ],
                ),
              ),
              Container(
                height: 0.05 * h,
                width: double.infinity,
                color: ColorHelper.kWhite,
                child: Row(
                  children: [
                    SizedBox(
                      width: 0.02 * w,
                    ),
                    Text(
                      "01/12/2021",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: ColorHelper.kDarkGreen),
                    ),
                    SizedBox(width: 0.08 * w),
                    Text(
                      "Nacimiento",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: ColorHelper.kDarkGreen),
                    ),
                  ],
                ),
              ),
              Container(
                height: 0.05 * h,
                width: double.infinity,
                color: ColorHelper.kgray,
                child: Row(
                  children: [
                    SizedBox(
                      width: 0.02 * w,
                    ),
                    Text(
                      "01/12/2021",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: ColorHelper.kDarkGreen),
                    ),
                    SizedBox(width: 0.08 * w),
                    Text(
                      "Perdido",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: ColorHelper.kDarkGreen),
                    ),
                  ],
                ),
              ),
              Container(
                height: 0.05 * h,
                width: double.infinity,
                color: ColorHelper.kWhite,
                child: Row(
                  children: [
                    SizedBox(
                      width: 0.02 * w,
                    ),
                    Text(
                      "01/12/2021",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: ColorHelper.kDarkGreen),
                    ),
                    SizedBox(width: 0.08 * w),
                    Text(
                      "Encontrado",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: ColorHelper.kDarkGreen),
                    ),
                  ],
                ),
              ),
              Container(
                height: 0.05 * h,
                width: double.infinity,
                color: ColorHelper.kgray,
                child: Row(
                  children: [
                    SizedBox(
                      width: 0.02 * w,
                    ),
                    Text(
                      "01/12/2021",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: ColorHelper.kDarkGreen),
                    ),
                    SizedBox(width: 0.08 * w),
                    Text(
                      "Primeras Crías",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: ColorHelper.kDarkGreen),
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
