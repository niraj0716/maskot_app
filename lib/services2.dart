import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:maskot_app/comment_services2.dart';
import 'package:maskot_app/constant/color_constant.dart';

class Services2 extends StatefulWidget {
  const Services2({super.key});

  @override
  State<Services2> createState() => _Services2State();
}

class _Services2State extends State<Services2> {
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
                      padding: const EdgeInsets.only(bottom: 20, left: 40),
                      child: Text(
                        "MIS SERVICIOS",
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
                height: 0.06 * h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ColorHelper.kGreen,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      InkResponse(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: ColorHelper.kDarkBlue,
                          size: 0.08 * w,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Titulo de Servicio",
                        style: TextStyle(
                          color: ColorHelper.kDarkBlue,
                          fontWeight: FontWeight.bold,
                          fontSize: 0.07 * w,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 0.28 * h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ColorHelper.kDarkGreen,
                      image: DecorationImage(
                          image: AssetImage("assets/images/Imagen 3.png"),
                          fit: BoxFit.fitWidth),
                    ),
                  ),
                  SizedBox(height: 0.01 * h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 0.05 * w,
                          ),
                        ),
                        SizedBox(height: 0.01 * h),
                        Row(
                          children: [
                            Spacer(),
                            InkResponse(
                              onTap: () {
                                showModalBottomSheet(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(30),
                                    ),
                                  ),
                                  isScrollControlled: true,
                                  context: context,
                                  builder: (context) {
                                    return Container(
                                      height: 200,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(30),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Column(
                                          children: [
                                            SizedBox(height: 0.02 * h),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.flag,
                                                  size: 0.06 * w,
                                                ),
                                                SizedBox(width: 0.04 * w),
                                                Text(
                                                  "Marcar comentario",
                                                  style: TextStyle(
                                                    fontSize: 0.05 * w,
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(height: 0.02 * h),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.delete,
                                                  size: 0.06 * w,
                                                ),
                                                SizedBox(width: 0.04 * w),
                                                Text(
                                                  "Eliminar comentario",
                                                  style: TextStyle(
                                                    fontSize: 0.05 * w,
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(height: 0.02 * h),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.person,
                                                  size: 0.06 * w,
                                                ),
                                                SizedBox(width: 0.04 * w),
                                                Text(
                                                  "Bloquear usuario",
                                                  style: TextStyle(
                                                    fontSize: 0.05 * w,
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(height: 0.02 * h),
                                            Container(
                                                height: 0.06 * h,
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: ColorHelper.kgray,
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "Cancelar",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 0.05 * w,
                                                    ),
                                                  ),
                                                )),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Container(
                                height: 0.04 * h,
                                width: 0.08 * w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: ColorHelper.kDarkBlue,
                                ),
                                child: Icon(
                                  Icons.comment,
                                  color: ColorHelper.kWhite,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 0.02 * w,
                            ),
                            InkResponse(
                              onTap: () {
                                showModalBottomSheet(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(30),
                                    ),
                                  ),
                                  isScrollControlled: true,
                                  context: context,
                                  builder: (context) {
                                    return Container(
                                      height: 200,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(30),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Column(
                                          children: [
                                            SizedBox(height: 0.02 * h),
                                            Text(
                                              "Compartir artículo",
                                              style: TextStyle(
                                                fontSize: 0.05 * w,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            SizedBox(height: 0.02 * h),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.mail,
                                                  size: 0.06 * w,
                                                ),
                                                SizedBox(width: 0.04 * w),
                                                Text(
                                                  "Enviar por mensaje directo",
                                                  style: TextStyle(
                                                    fontSize: 0.05 * w,
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(height: 0.02 * h),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.link,
                                                  size: 0.06 * w,
                                                ),
                                                SizedBox(width: 0.04 * w),
                                                Text(
                                                  "Copiar enlace",
                                                  style: TextStyle(
                                                    fontSize: 0.05 * w,
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(height: 0.02 * h),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.facebook,
                                                  size: 0.09 * w,
                                                  color: ColorHelper.kBlue,
                                                ),
                                                Icon(
                                                  Icons.facebook,
                                                  size: 0.09 * w,
                                                  color: ColorHelper.kBlue,
                                                ),
                                                Icon(
                                                  Icons.facebook,
                                                  size: 0.09 * w,
                                                  color: ColorHelper.kBlue,
                                                ),
                                                Icon(
                                                  Icons.facebook,
                                                  size: 0.09 * w,
                                                  color: ColorHelper.kBlue,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Container(
                                height: 0.04 * h,
                                width: 0.08 * w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: ColorHelper.kDarkBlue,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.share,
                                    color: ColorHelper.kWhite,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 0.01 * h),
                        Padding(
                          padding: const EdgeInsets.only(left: 100),
                          child: InkResponse(
                            onTap: () {
                              Get.to(CommentServices2());
                            },
                            child: Container(
                              height: 0.05 * h,
                              width: 0.7 * w,
                              decoration: BoxDecoration(
                                color: ColorHelper.kWhite,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 60),
                                child: Center(
                                  child: Text(
                                    "agregar un comentario",
                                    style: TextStyle(
                                      color: ColorHelper.kgray,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 0.05 * w,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 0.01 * h),
                        Container(
                          height: 0.17 * h,
                          width: double.infinity,
                          color: ColorHelper.kTransparent,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 0.06 * h,
                                    width: 0.16 * w,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                          "assets/images/Mask group.png",
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 0.01 * w),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Mickey",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 0.06 * w,
                                        ),
                                      ),
                                      Text(
                                        "2m ago",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 0.04 * w,
                                          color: ColorHelper.kgray,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.more_horiz,
                                    size: 0.08 * w,
                                    color: ColorHelper.kgray,
                                  ),
                                ],
                              ),
                              SizedBox(height: 0.01 * h),
                              Padding(
                                padding: const EdgeInsets.only(left: 66),
                                child: Text(
                                  "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 0.04 * w,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 66),
                                child: Row(
                                  children: [
                                    Text(
                                      "Responder",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 0.04 * w,
                                        color: ColorHelper.kgray,
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.favorite_border,
                                      color: ColorHelper.kgray,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
