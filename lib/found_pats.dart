import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maskot_app/constant/color_constant.dart';
import 'package:maskot_app/maskota_perdida2.dart';

class FoundPats extends StatefulWidget {
  const FoundPats({super.key});

  @override
  State<FoundPats> createState() => _FoundPatsState();
}

class _FoundPatsState extends State<FoundPats> {
  double slidervalue = 0;

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 0.11 * h,
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
                    padding: const EdgeInsets.only(bottom: 2, left: 46),
                    child: Text(
                      " MASCOTAS PERDIDAS",
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
                    Text(
                      "Lima",
                      style: TextStyle(
                        color: ColorHelper.kDarkGreen,
                        fontWeight: FontWeight.bold,
                        fontSize: 0.07 * w,
                      ),
                    ),
                    Spacer(),
                    InkResponse(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                alignment: Alignment.topCenter,
                                insetPadding: EdgeInsets.only(top: 120),
                                child: Container(
                                  height: 0.6 * h,
                                  width: 0.9 * w,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 0.02 * h),
                                        TextField(
                                          textAlign: TextAlign.left,
                                          decoration: InputDecoration(
                                            constraints: BoxConstraints(
                                              maxHeight: 0.06 * h,
                                            ),
                                            hintText: 'Nombre mascota',
                                            hintStyle: TextStyle(
                                              color: ColorHelper.kblack,
                                              fontWeight: FontWeight.w900,
                                            ),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 0.01 * h),
                                        TextField(
                                          textAlign: TextAlign.left,
                                          decoration: InputDecoration(
                                            constraints: BoxConstraints(
                                              maxHeight: 0.06 * h,
                                            ),
                                            hintText: 'Perú',
                                            hintStyle: TextStyle(
                                              color: ColorHelper.kblack,
                                              fontWeight: FontWeight.w900,
                                            ),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 0.01 * h),
                                        TextField(
                                          textAlign: TextAlign.left,
                                          decoration: InputDecoration(
                                            constraints: BoxConstraints(
                                              maxHeight: 0.06 * h,
                                            ),
                                            hintText: 'Lima',
                                            suffixIcon:
                                                Icon(Icons.arrow_drop_down),
                                            hintStyle: TextStyle(
                                              color: ColorHelper.kblack,
                                              fontWeight: FontWeight.w900,
                                            ),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 0.01 * h),
                                        TextField(
                                          textAlign: TextAlign.left,
                                          decoration: InputDecoration(
                                            constraints: BoxConstraints(
                                              maxHeight: 0.06 * h,
                                            ),
                                            hintText: 'Distrito',
                                            suffixIcon:
                                                Icon(Icons.arrow_drop_down),
                                            hintStyle: TextStyle(
                                              color: ColorHelper.kblack,
                                              fontWeight: FontWeight.w900,
                                            ),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 0.01 * h),
                                        TextField(
                                          textAlign: TextAlign.left,
                                          decoration: InputDecoration(
                                            constraints: BoxConstraints(
                                              maxHeight: 0.06 * h,
                                            ),
                                            hintText: 'Ordenar por antiguedad',
                                            suffixIcon:
                                                Icon(Icons.calendar_month),
                                            hintStyle: TextStyle(
                                              color: ColorHelper.kblack,
                                              fontWeight: FontWeight.w900,
                                            ),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 0.01 * h),
                                        Text(
                                          "Ordenar por recompensa",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 0.04 * w,
                                          ),
                                        ),
                                        SizedBox(height: 0.03 * h),
                                        SliderTheme(
                                          data: SliderThemeData(
                                            activeTrackColor: Colors.green,
                                            inactiveTrackColor: Colors.grey,
                                            thumbColor: Colors.white,
                                            activeTickMarkColor: Colors.white,
                                            inactiveTickMarkColor: Colors.white,
                                            trackHeight: 10,
                                            overlayColor: Colors.green,
                                            valueIndicatorColor:
                                                Colors.transparent,
                                            valueIndicatorTextStyle: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                          child: Slider.adaptive(
                                            min: 0,
                                            max: 100,
                                            divisions: 20,
                                            value: slidervalue,
                                            onChanged: (value) {
                                              setState(
                                                () {
                                                  slidervalue = value;
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                        MaterialButton(
                                          onPressed: () {},
                                          color: ColorHelper.kGreen,
                                          height: 0.06 * h,
                                          minWidth: 0.9 * w,
                                          child: Text(
                                            "Buscar",
                                            style: TextStyle(
                                              color: ColorHelper.kDarkGreen,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 0.06 * w,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Icon(Icons.file_copy_outlined)),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 0.30 * h,
                              width: double.infinity,
                              margin: EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                              ),
                              child: Image.asset(
                                "assets/images/image 35.png",
                                scale: 0.2,
                              ),
                            ),
                            Positioned(
                              top: 30,
                              right: 10,
                              child: InkResponse(
                                onTap: () {
                                  Get.to(MaskotaPerdida2());
                                },
                                child: Container(
                                  height: 0.1 * h,
                                  width: 0.38 * w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: ColorHelper.kGreen,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Text(
                                      // maxLines: 4,
                                      "Nombre de la mascota Recompesa Ciudad Nombre Distrito cercanos",
                                      style: TextStyle(
                                        fontSize: 0.04 * w,
                                        fontWeight: FontWeight.w900,
                                        color: ColorHelper.kWhite,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
