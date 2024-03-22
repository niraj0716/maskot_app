import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';

import 'constant/color_constant.dart';

class AddImage extends StatefulWidget {
  const AddImage({super.key});

  @override
  State<AddImage> createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {
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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          selectImages();
        },
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 0.08 * h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorHelper.kDarkBlue,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/maskot.png",
                    width: 0.3 * w,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                      "Peru",
                      style: TextStyle(
                        fontSize: 0.04 * w,
                        color: ColorHelper.kWhite,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 130, top: 10),
                    child: Text(
                      "MIS SERVICIOS",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 0.05 * w,
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
                child: Row(
                  children: [
                    InkResponse(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: ColorHelper.kDarkBlue,
                        size: 0.06 * w,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Galería",
                      style: TextStyle(
                        color: ColorHelper.kDarkBlue,
                        fontWeight: FontWeight.bold,
                        fontSize: 0.05 * w,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 0.02 * h),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Wrap(
                  children: List.generate(
                    ImageFileList.length,
                    (index) => InkResponse(
                      // onTap: () {
                      //   Get.to(Services5());
                      // },
                      child: Container(
                        height: 150,
                        width: 137.1,
                        child: Image.file(
                          File(ImageFileList[index].path),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(),
          ],
        ),
      ),
    );
  }
}
// selectImages == null
// ? Padding(
// padding: const EdgeInsets.symmetric(horizontal: 10),
// child: GridView.builder(
// shrinkWrap: true,
// itemCount: ImageFileList.length + 1,
// gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// crossAxisCount: 2,
// mainAxisSpacing: 10,
// crossAxisSpacing: 10,
// ),
// itemBuilder: (context, index) {
// return InkResponse(
// onTap: () {
// selectImages();
// },
// child: Container(
// height: 0.03 * h,
// color: Colors.white,
// child: Column(
// children: [
// Icon(
// Icons.add,
// size: 0.1 * w,
// color: ColorHelper.kDarkBlue,
// ),
// Text(
// "Agregar \nnueva\n mascota",
// maxLines: 3,
// style: TextStyle(
// fontSize: 0.05 * w,
// color: ColorHelper.kDarkBlue,
// fontWeight: FontWeight.w600,
// ),
// textAlign: TextAlign.center,
// ),
// ],
// ),
// ),
// );
// },
// ),
// )
//     : Wrap(
// children: List.generate(
// ImageFileList.length,
// (index) => Container(
// height: 150,
// width: 137.1,
// child: InstaImageViewer(
// child: InteractiveViewer(
// child: Image.file(
// File(ImageFileList[index].path),
// fit: BoxFit.cover,
// ),
// ),
// ),
// ),
// ),
// ),
