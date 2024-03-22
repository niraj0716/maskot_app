import 'package:flutter/material.dart';

import 'constant/color_constant.dart';

class CommentServices2 extends StatefulWidget {
  const CommentServices2({super.key});

  @override
  State<CommentServices2> createState() => _CommentServices2State();
}

class _CommentServices2State extends State<CommentServices2> {
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
                    padding: const EdgeInsets.only(bottom: 15, left: 40),
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
            ListView.builder(
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 0.22 * h,
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
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                        ),
                        SizedBox(height: 0.02 * h),
                        Divider(
                          thickness: 2.0,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        )),
      ),
    );
  }
}
