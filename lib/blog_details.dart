import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'constant/color_constant.dart';

class Blog_Details extends StatefulWidget {
  const Blog_Details({super.key});

  @override
  State<Blog_Details> createState() => _Blog_DetailsState();
}

class _Blog_DetailsState extends State<Blog_Details> {
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
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, right: 30),
                      child: Text(
                        "BLOG",
                        style: TextStyle(
                          fontSize: 0.08 * w,
                          color: ColorHelper.kGreen,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 0.02 * h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkResponse(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(
                            Icons.arrow_back,
                            size: 0.08 * w,
                          ),
                        ),
                        SizedBox(width: 0.05 * w),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Buscar....",
                            constraints: BoxConstraints(
                              maxHeight: 0.07 * h,
                              maxWidth: 0.8 * w,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            fillColor: ColorHelper.kWhite,
                            filled: true,
                            prefixIcon: Icon(
                              Icons.search,
                              size: 0.06 * w,
                              color: ColorHelper.kblack,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 0.02 * h),
                    Container(
                      height: 0.27 * h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/dog.png",
                          ),
                          fit: BoxFit.cover,
                        ),
                        color: ColorHelper.kDarkGreen,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    SizedBox(height: 0.02 * h),
                    Row(
                      children: [
                        Container(
                          height: 0.03 * h,
                          width: 0.18 * w,
                          decoration: BoxDecoration(
                            color: ColorHelper.kGreen,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              "Tecnología",
                              style: TextStyle(
                                fontSize: 0.03 * w,
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Ene 1, 2023 . 3344 vistas",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: ColorHelper.kgray,
                            fontSize: 0.03 * w,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 0.02 * h),
                    Text(
                      "No existe evidencia científica que tu perro padezca ni transmita el COVID-19",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 0.06 * w,
                      ),
                    ),
                    SizedBox(height: 0.02 * h),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id sit eu tellus sed cursus eleifend id porta. Lorem adipiscing mus vestibulum consequat porta eu ultrices feugiat. Et, faucibus ut amet turpis. Facilisis faucibus semper cras purus.",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 0.04 * w,
                      ),
                    ),
                    SizedBox(height: 0.02 * h),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id sit eu tellus sed cursus eleifend id porta. ",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 0.04 * w,
                      ),
                    ),
                    SizedBox(height: 0.02 * h),
                    Text(
                      "Fermentum et eget libero lectus. Amet, tellus aliquam, dignissim enim placerat purus nunc, ac ipsum. Ac pretium.",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 0.04 * w,
                      ),
                    ),
                    SizedBox(height: 0.01 * h),
                    Divider(
                      color: ColorHelper.kblack,
                      thickness: 0.2,
                    ),
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
                              color: ColorHelper.kDarkGreen,
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
                                        SizedBox(height: 0.04 * h),
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
                              color: ColorHelper.kDarkGreen,
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
                    Divider(
                      color: ColorHelper.kblack,
                      thickness: 0.2,
                    ),
                    SizedBox(height: 0.01 * h),
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
