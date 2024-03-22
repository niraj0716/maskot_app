import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maskot_app/constant/color_constant.dart';

class PrivateSuscriptedProfile extends StatefulWidget {
  const PrivateSuscriptedProfile({super.key});

  @override
  State<PrivateSuscriptedProfile> createState() =>
      _PrivateSuscriptedProfileState();
}

class _PrivateSuscriptedProfileState extends State<PrivateSuscriptedProfile> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
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
                        height: 0.02 * h,
                      ),
                      Text(
                        "Vencimiento",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w800,
                            color: ColorHelper.kDarkGreen),
                      ),
                      SizedBox(height: 0.00 * h),
                      Text(
                        "20/12/23",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w800,
                            color: ColorHelper.kDarkGreen),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 0.05 * h,
                  ),
                  SizedBox(width: 0.01 * w),
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
                      Text("ID: 45874155",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                              color: ColorHelper.kDarkGreen)),
                      SizedBox(height: 0.02 * h),
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
                          Container(
                            height: 0.05 * h,
                            width: 0.12 * w,
                            margin: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: ColorHelper.kDarkGreen),
                            child: Icon(
                              Icons.note_alt_sharp,
                              color: Colors.grey,
                            ),
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
                                fontWeight: FontWeight.w900,
                                fontFamily: "Segoe",
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
                            "Fecha de nacimiento",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontFamily: "Segoe",
                                color: ColorHelper.kDarkGreen,
                                fontSize: 15),
                          ),
                          SizedBox(width: 0.12 * w),
                          Text(
                            "06/04/2021",
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
                        children: [
                          Text(
                            "Teléfono de contacto",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontFamily: "Segoe",
                                color: ColorHelper.kDarkGreen,
                                fontSize: 15),
                          ),
                          SizedBox(width: 0.11 * w),
                          Text(
                            "+51 9876354587",
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
                            "WhatsApp",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontFamily: "Segoe",
                                color: ColorHelper.kDarkGreen,
                                fontSize: 15),
                          ),
                          SizedBox(width: 0.31 * w),
                          Text(
                            "Si",
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
                      Row(
                        children: [
                          Text(
                            "Código QR",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w900,
                                color: ColorHelper.kDarkGreen,
                                fontFamily: "Segoe"),
                          ),
                          SizedBox(width: 0.17 * w),
                          Text(
                            "Ver",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w900,
                                color: ColorHelper.kDarkGreen,
                                fontFamily: "Segoe"),
                          ),
                          SizedBox(width: 0.17 * w),
                          Text(
                            "Descargar",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w900,
                                color: ColorHelper.kDarkGreen,
                                fontFamily: "Segoe"),
                          ),
                        ],
                      ),
                      SizedBox(height: 0.02 * h),
                      Center(
                          child: Image.asset(
                        "assets/images/Imagen 27.png",
                        scale: 1.3,
                      )),
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
                height: 0.06 * h,
                width: double.infinity,
                color: ColorHelper.kDarkGreen,
                child: Row(
                  children: [
                    SizedBox(width: 0.08 * w),
                    Text(
                      "Fecha",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 19,
                          color: ColorHelper.kWhite),
                    ),
                    SizedBox(width: 0.10 * w),
                    Text(
                      "Vacuna",
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
                      "01/12/2021",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: ColorHelper.kDarkGreen),
                    ),
                    SizedBox(width: 0.03 * w),
                    Text(
                      "Distemper 1ra dosis",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: ColorHelper.kDarkGreen),
                    ),
                    SizedBox(width: 0.18 * w),
                    Icon(
                      Icons.note_alt_sharp,
                      color: ColorHelper.kDarkGreen,
                    )
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
                      "01/12/2021",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: ColorHelper.kDarkGreen),
                    ),
                    SizedBox(width: 0.03 * w),
                    Text(
                      "Parvovirus dosis única",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: ColorHelper.kDarkGreen),
                    ),
                    SizedBox(width: 0.13 * w),
                    Icon(
                      Icons.note_alt_sharp,
                      color: ColorHelper.kDarkGreen,
                    )
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
                      "01/12/2021",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: ColorHelper.kDarkGreen),
                    ),
                    SizedBox(width: 0.03 * w),
                    Text(
                      "Distemper 2da dosis",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: ColorHelper.kDarkGreen),
                    ),
                    SizedBox(width: 0.17 * w),
                    Icon(
                      Icons.note_alt_sharp,
                      color: ColorHelper.kDarkGreen,
                    )
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
                      "01/12/2021",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: ColorHelper.kDarkGreen),
                    ),
                    SizedBox(width: 0.03 * w),
                    Text(
                      "Rabia 1ra dosis",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: ColorHelper.kDarkGreen),
                    ),
                    SizedBox(width: 0.27 * w),
                    Icon(
                      Icons.note_alt_sharp,
                      color: ColorHelper.kDarkGreen,
                    )
                  ],
                ),
              ),
              Container(
                height: 0.07 * h,
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
                    SizedBox(width: 0.63 * w),
                    Text(
                      "7",
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
                    SizedBox(width: 0.05 * w),
                    Text(
                      "Fecha",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          color: ColorHelper.kWhite),
                    ),
                    SizedBox(width: 0.15 * w),
                    Text(
                      "Evento",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          color: ColorHelper.kWhite),
                    ),
                    SizedBox(width: 0.14 * w),
                    Text(
                      "Descripción",
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
                    SizedBox(width: 0.08 * w),
                    Text(
                      "Nació pesando..",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: ColorHelper.kDarkGreen),
                    ),
                    SizedBox(
                      width: 0.03 * h,
                    ),
                    Icon(Icons.note_alt_sharp)
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
                    SizedBox(width: 0.15 * w),
                    Text(
                      "Por urb cantuba",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: ColorHelper.kDarkGreen),
                    ),
                    SizedBox(
                      width: 0.03 * h,
                    ),
                    Icon(Icons.note_alt_sharp)
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
                    SizedBox(width: 0.09 * w),
                    Text(
                      "Se pagaron ",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: ColorHelper.kDarkGreen),
                    ),
                    SizedBox(
                      width: 0.06 * h,
                    ),
                    Icon(Icons.note_alt_sharp)
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
                    SizedBox(width: 0.04 * w),
                    Text(
                      "Se pagaron ",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: ColorHelper.kDarkGreen),
                    ),
                    SizedBox(
                      width: 0.06 * h,
                    ),
                    Icon(Icons.note_alt_sharp)
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
