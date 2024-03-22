import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constant/color_constant.dart';

class SuscribedOublic extends StatefulWidget {
  const SuscribedOublic({super.key});

  @override
  State<SuscribedOublic> createState() => _SuscribedOublicState();
}

class _SuscribedOublicState extends State<SuscribedOublic> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
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
                  SizedBox(width: 0.04 * w),
                  Column(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Color(0xffB3D208),
                        radius: 25,
                        child: Icon(
                          Icons.thumb_up,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "210",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 17,
                            color: ColorHelper.kDarkGreen),
                      ),
                      SizedBox(
                        height: 0.03 * h,
                      ),
                    ],
                  ),
                  SizedBox(width: 0.06 * w),
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
                  SizedBox(width: 0.02 * w),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 0.05 * h,
                            width: 0.12 * w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ColorHelper.kDarkGreen,
                            ),
                            child: Icon(Icons.share, color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(height: 0.02 * h),
                      Container(
                        height: 0.07 * h,
                        width: 0.27 * w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: ColorHelper.kGreen,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Center(
                            child: Text(
                              // maxLines: 4,
                              "  Se perdió\nmi mascota",
                              style: TextStyle(
                                fontSize: 0.04 * w,
                                fontWeight: FontWeight.w900,
                                color: ColorHelper.kDarkGreen,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
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
                                fontFamily: "Segoe",
                                color: ColorHelper.kblack,
                                fontSize: 15),
                          ),
                          SizedBox(width: 0.36 * w),
                          Text(
                            "Macho",
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
                            "Edad",
                            style: TextStyle(
                                fontFamily: "Segoe",
                                color: ColorHelper.kblack,
                                fontSize: 15),
                          ),
                          SizedBox(width: 0.40 * w),
                          Text(
                            "4 años",
                            style: TextStyle(
                                fontSize: 15,
                                color: ColorHelper.kblack,
                                fontFamily: "Segoe"),
                          )
                        ],
                      ),
                      Divider(color: Colors.grey),
                      Row(
                        children: [
                          Text(
                            "Origen",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontFamily: "Segoe",
                                color: ColorHelper.kDarkGreen,
                                fontSize: 15),
                          ),
                          SizedBox(width: 0.37 * w),
                          Text(
                            "Lima",
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
                      Divider(color: Colors.grey),
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
                      SizedBox(
                        height: 0.05 * h,
                      ),
                      Text(
                        "Redes",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            color: ColorHelper.kDarkGreen,
                            fontFamily: "Segoe"),
                      ),
                      SizedBox(height: 0.01 * h),
                      Row(
                        children: [
                          Text(
                            "Facebook",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w900,
                                color: ColorHelper.kDarkGreen,
                                fontFamily: "Segoe"),
                          ),
                          SizedBox(width: 0.07 * w),
                          Text(
                            "www.facebook.com/usuario",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w900,
                                color: ColorHelper.kDarkGreen,
                                fontFamily: "Segoe"),
                          ),
                        ],
                      ),
                      SizedBox(height: 0.01 * h),
                      Row(
                        children: [
                          Text(
                            "Instagram",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w900,
                                color: ColorHelper.kDarkGreen,
                                fontFamily: "Segoe"),
                          ),
                          SizedBox(width: 0.06 * w),
                          Text(
                            "www.instagram.com/usuario",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w900,
                                color: ColorHelper.kDarkGreen,
                                fontFamily: "Segoe"),
                          ),
                        ],
                      ),
                      SizedBox(height: 0.01 * h),
                      Row(
                        children: [
                          Text(
                            "Tik Tok",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w900,
                                color: ColorHelper.kDarkGreen,
                                fontFamily: "Segoe"),
                          ),
                          SizedBox(width: 0.11 * w),
                          Text(
                            "www.tiktok.com/usuario",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w900,
                                color: ColorHelper.kDarkGreen,
                                fontFamily: "Segoe"),
                          ),
                        ],
                      ),
                      SizedBox(height: 0.02 * h),
                      Text(
                        "Galería",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            color: ColorHelper.kDarkGreen,
                            fontFamily: "Segoe"),
                      ),
                      SizedBox(height: 0.01 * h),
                      Row(
                        children: [
                          Container(
                            height: 0.16 * h,
                            width: 0.43 * w,
                            color: Colors.grey,
                          ),
                          Container(
                            height: 0.16 * h,
                            width: 0.43 * w,
                            margin: EdgeInsets.only(left: 15),
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      SizedBox(height: 0.01 * h),
                      Row(
                        children: [
                          Container(
                            height: 0.16 * h,
                            width: 0.43 * w,
                            color: Colors.grey,
                          ),
                          Container(
                            height: 0.16 * h,
                            width: 0.43 * w,
                            margin: EdgeInsets.only(left: 15),
                            color: Colors.grey,
                          ),
                        ],
                      ),
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
                      "Comentarios",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 23,
                        color: ColorHelper.kDarkGreen,
                      ),
                    ),
                    SizedBox(width: 0.60 * w),
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
