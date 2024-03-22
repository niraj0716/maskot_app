import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constant/color_constant.dart';

class FomularioDeMascotaPerdidia1 extends StatefulWidget {
  const FomularioDeMascotaPerdidia1({super.key});

  @override
  State<FomularioDeMascotaPerdidia1> createState() =>
      _FomularioDeMascotaPerdidia1State();
}

class _FomularioDeMascotaPerdidia1State
    extends State<FomularioDeMascotaPerdidia1> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
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
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Reportar Mascota Perdida",
                  style: TextStyle(
                    color: ColorHelper.kDarkBlue,
                    fontWeight: FontWeight.w900,
                    fontSize: 0.06 * w,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
