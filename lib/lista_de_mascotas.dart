import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:maskot_app/constant/color_constant.dart';

class ListDemascotas extends StatefulWidget {
  const ListDemascotas({super.key});

  @override
  State<ListDemascotas> createState() => _ListDemascotasState();
}

class _ListDemascotasState extends State<ListDemascotas> {
  final ImagePicker imagePicker = ImagePicker();
  List<XFile> ImageFileList = [];
  void selectImages() async {
    final List<XFile>? selectedImages = await imagePicker.pickMultiImage();
    if (selectedImages!.isNotEmpty) {
      ImageFileList!.addAll(selectedImages);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            InkResponse(
              // onTap: () {
              //   Get.to(Services5());
              // },
              child: Container(
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
                        size: 0.07 * w,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Galería",
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
            SizedBox(height: 0.02 * h),
            // Wrap(
            //   children: List.generate(
            //     ImageFileList.length,
            //     (index) => InkResponse(
            //       onTap: () {
            //         selectImages();
            //       },
            //       child: Container(
            //         height: 150,
            //         width: 137.1,
            //         child: Column(
            //           children: [
            //             Icon(
            //               Icons.add,
            //               size: 0.1 * w,
            //               color: ColorHelper.kDarkBlue,
            //             ),
            //             Text(
            //               "Agregar \nnueva\n mascota",
            //               maxLines: 3,
            //               style: TextStyle(
            //                 fontSize: 0.05 * w,
            //                 color: ColorHelper.kDarkBlue,
            //                 fontWeight: FontWeight.w600,
            //               ),
            //               textAlign: TextAlign.center,
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ),
            // ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return InkResponse(
                    onTap: () {
                      selectImages();
                    },
                    child: Container(
                      height: 0.05 * h,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Icon(
                            Icons.add,
                            size: 0.1 * w,
                            color: ColorHelper.kDarkBlue,
                          ),
                          Text(
                            "Agregar \nnueva\n mascota",
                            maxLines: 3,
                            style: TextStyle(
                              fontSize: 0.05 * w,
                              color: ColorHelper.kDarkBlue,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
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
