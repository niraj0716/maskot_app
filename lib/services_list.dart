import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maskot_app/constant/color_constant.dart';

class ServicesList extends StatefulWidget {
  const ServicesList({super.key});

  @override
  State<ServicesList> createState() => _ServicesListState();
}

class _ServicesListState extends State<ServicesList> {
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
                    padding: const EdgeInsets.only(bottom: 1, left: 58),
                    child: Text(
                      "MIS SERVICIOS",
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
                        color: ColorHelper.kDarkGreen,
                        size: 0.08 * w,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 0.02 * h),
            Expanded(
              child: ListView.builder(
                itemCount: 8,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(height: 0.01 * h),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: [
                            Container(
                              height: 0.10 * h,
                              width: 0.2 * w,
                              decoration: BoxDecoration(
                                // color: ColorHelper.kDarkBlue,
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/Clip path group (1).png"),
                                    fit: BoxFit.fitWidth),
                                border: Border.all(
                                  color: ColorHelper.kblack,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            SizedBox(width: 0.04 * w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Titulo de Servicio",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: ColorHelper.kDarkGreen,
                                        fontSize: 0.06 * w,
                                      ),
                                    ),
                                    SizedBox(width: 0.15 * w),
                                    Icon(
                                      Icons.note_alt_sharp,
                                      color: ColorHelper.kDarkGreen,
                                      size: 0.08 * w,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Lorem Ipsum is simply dummy text\n of the printing and typesetting ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: ColorHelper.kDarkGreen,
                                    fontSize: 0.04 * w,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 0.01 * h),
                      Divider(
                        color: ColorHelper.kblack,
                        thickness: 1,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
