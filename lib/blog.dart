import 'package:flutter/material.dart';
import 'package:maskot_app/constant/color_constant.dart';

class Blog extends StatefulWidget {
  const Blog({super.key});

  @override
  State<Blog> createState() => _BlogState();
}

class _BlogState extends State<Blog> with TickerProviderStateMixin {
  List name = [
    'Todas',
    'Mascotas',
    'Alimentación',
    'Veterinarias',
  ];

  List image = [
    "assets/images/unsplash_4WYdpGych4c (2).png",
    "assets/images/unsplash_4WYdpGych4c (3).png",
    "assets/images/unsplash_4WYdpGych4c (2).png",
    "assets/images/unsplash_4WYdpGych4c (3).png",
    "assets/images/unsplash_4WYdpGych4c (2).png",
  ];

  TabController? tabController;
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  int select = 0;

  int pagechange = 0;
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 0.02 * h),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Buscar....",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        fillColor: Color(0xffF4F4F4),
                        filled: true,
                        prefixIcon: Icon(
                          Icons.search,
                          size: 0.08 * w,
                          color: Color(0xff4F4F4F),
                        ),
                      ),
                    ),
                    SizedBox(height: 0.02 * h),
                    Text(
                      "Últimas noticias",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 0.07 * w,
                        color: ColorHelper.kDarkGreen,
                      ),
                    ),
                    SizedBox(
                      height: 270,
                      child: PageView.builder(
                        onPageChanged: (value) {
                          setState(() {});
                          pagechange = value;
                        },
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 150,
                                    width: 280,
                                    margin: EdgeInsets.only(top: 20),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                            "assets/images/fram1.png",
                                          ),
                                          fit: BoxFit.cover),
                                      color: ColorHelper.kGreen,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    // child: Image.asset(
                                    //   "assets/images/fram1.png",
                                    //   fit: BoxFit.cover,
                                    // ),
                                  ),
                                  Positioned(
                                    left: 15,
                                    top: 30,
                                    child: Container(
                                      height: 0.04 * h,
                                      width: 0.18 * w,
                                      decoration: BoxDecoration(
                                        color: Color(0xff00798C),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Noticia",
                                          style: TextStyle(
                                            fontSize: 0.03 * w,
                                            color: ColorHelper.kWhite,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 20,
                                    top: 30,
                                    child: Container(
                                      height: 0.04 * h,
                                      width: 0.08 * w,
                                      decoration: BoxDecoration(
                                        color: Color(0xff00798C),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(
                                        Icons.save_alt,
                                        color: ColorHelper.kWhite,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 0.02 * h),
                              Text(
                                "Por qué tratar a las mascotas \ncomo hijos",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 0.06 * w,
                                ),
                              ),
                              SizedBox(height: 0.01 * h),
                              Text(
                                "Ene 3, 2023 . 3344 vistas",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: ColorHelper.kgray,
                                  fontSize: 0.03 * w,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 0.0 * h),
                    TabBar(
                      onTap: (value) {
                        select = value;
                        setState(() {});
                      },
                      controller: tabController,
                      indicatorColor: Colors.transparent,
                      tabs: List.generate(
                        name.length,
                        (index) {
                          return Container(
                            height: 0.03 * h,
                            width: 0.9 * w,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: ColorHelper.kblack,
                              ),
                              borderRadius: BorderRadius.circular(5),
                              color: select == index
                                  ? Color(0xff2C2C2C)
                                  : Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                "${name[index]}",
                                style: TextStyle(
                                  color: select == index
                                      ? Colors.white
                                      : Colors.grey,
                                  fontSize: 0.03 * w,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    // SizedBox(
                    //   height: 0.29 * h,
                    //   child: TabBarView(
                    //     controller: tabController,
                    //     children: [
                    //       ListView.builder(
                    //         itemCount: 5,
                    //         shrinkWrap: true,
                    //         itemBuilder: (context, index) {
                    //           return Container(
                    //             margin: EdgeInsets.symmetric(vertical: 3),
                    //             height: 0.12 * h,
                    //             width: double.infinity,
                    //             child: Padding(
                    //               padding:
                    //                   const EdgeInsets.symmetric(horizontal: 8),
                    //               child: Row(
                    //                 children: [
                    //                   Container(
                    //                     height: 0.11 * h,
                    //                     width: 0.25 * w,
                    //                     decoration: BoxDecoration(
                    //                       image: DecorationImage(
                    //                           image:
                    //                               AssetImage("${image[index]}"),
                    //                           fit: BoxFit.cover),
                    //                       borderRadius:
                    //                           BorderRadius.circular(10),
                    //                       color: ColorHelper.kGreen,
                    //                     ),
                    //                   ),
                    //                   SizedBox(width: 0.03 * w),
                    //                   Column(
                    //                     crossAxisAlignment:
                    //                         CrossAxisAlignment.start,
                    //                     mainAxisAlignment:
                    //                         MainAxisAlignment.spaceEvenly,
                    //                     children: [
                    //                       Row(
                    //                         children: [
                    //                           Container(
                    //                             height: 0.03 * h,
                    //                             width: 0.18 * w,
                    //                             decoration: BoxDecoration(
                    //                               color: ColorHelper.kgray,
                    //                               borderRadius:
                    //                                   BorderRadius.circular(5),
                    //                             ),
                    //                             child: Center(
                    //                               child: Text(
                    //                                 "Technology",
                    //                                 style: TextStyle(
                    //                                   fontSize: 0.03 * w,
                    //                                 ),
                    //                               ),
                    //                             ),
                    //                           ),
                    //                           SizedBox(width: 0.04 * w),
                    //                           Text(
                    //                             "Jan 4, 2022 . 3344 vistas",
                    //                             style: TextStyle(
                    //                               fontWeight: FontWeight.w700,
                    //                               color: ColorHelper.kgray,
                    //                               fontSize: 0.03 * w,
                    //                             ),
                    //                           ),
                    //                         ],
                    //                       ),
                    //                       Text(
                    //                         "Augmented Reality Trends\nfor 2022",
                    //                         style: TextStyle(
                    //                           fontWeight: FontWeight.w700,
                    //                           fontSize: 0.05 * w,
                    //                         ),
                    //                       ),
                    //                     ],
                    //                   ),
                    //                 ],
                    //               ),
                    //             ),
                    //           );
                    //         },
                    //       ),
                    //       ListView.builder(
                    //         itemCount: 5,
                    //         shrinkWrap: true,
                    //         itemBuilder: (context, index) {
                    //           return Container(
                    //             margin: EdgeInsets.symmetric(vertical: 10),
                    //             height: 0.15 * h,
                    //             width: double.infinity,
                    //             child: Padding(
                    //               padding: const EdgeInsets.symmetric(
                    //                   horizontal: 10),
                    //               child: Row(
                    //                 children: [
                    //                   Container(
                    //                     height: 0.12 * h,
                    //                     width: 0.25 * w,
                    //                     decoration: BoxDecoration(
                    //                       borderRadius:
                    //                           BorderRadius.circular(10),
                    //                       color: ColorHelper.kDarkGreen,
                    //                     ),
                    //                   ),
                    //                   SizedBox(width: 0.03 * w),
                    //                   Column(
                    //                     crossAxisAlignment:
                    //                         CrossAxisAlignment.start,
                    //                     mainAxisAlignment:
                    //                         MainAxisAlignment.spaceEvenly,
                    //                     children: [
                    //                       Row(
                    //                         children: [
                    //                           Container(
                    //                             height: 0.03 * h,
                    //                             width: 0.18 * w,
                    //                             decoration: BoxDecoration(
                    //                               color: ColorHelper.kgray,
                    //                               borderRadius:
                    //                                   BorderRadius.circular(5),
                    //                             ),
                    //                             child: Center(
                    //                               child: Text(
                    //                                 "Technology",
                    //                                 style: TextStyle(
                    //                                   fontSize: 0.03 * w,
                    //                                 ),
                    //                               ),
                    //                             ),
                    //                           ),
                    //                           SizedBox(width: 0.04 * w),
                    //                           Text(
                    //                             "Jan 4, 2022 . 3344 vistas",
                    //                             style: TextStyle(
                    //                               fontWeight: FontWeight.w700,
                    //                               color: ColorHelper.kgray,
                    //                               fontSize: 0.03 * w,
                    //                             ),
                    //                           ),
                    //                         ],
                    //                       ),
                    //                       Text(
                    //                         "Augmented Reality Trends\nfor 2022",
                    //                         style: TextStyle(
                    //                           fontWeight: FontWeight.w700,
                    //                           fontSize: 0.05 * w,
                    //                         ),
                    //                       ),
                    //                     ],
                    //                   ),
                    //                 ],
                    //               ),
                    //             ),
                    //           );
                    //         },
                    //       ),
                    //       ListView.builder(
                    //         itemCount: 5,
                    //         shrinkWrap: true,
                    //         itemBuilder: (context, index) {
                    //           return Container(
                    //             margin: EdgeInsets.symmetric(vertical: 10),
                    //             height: 0.15 * h,
                    //             width: double.infinity,
                    //             child: Padding(
                    //               padding: const EdgeInsets.symmetric(
                    //                   horizontal: 10),
                    //               child: Row(
                    //                 children: [
                    //                   Container(
                    //                     height: 0.12 * h,
                    //                     width: 0.25 * w,
                    //                     decoration: BoxDecoration(
                    //                       borderRadius:
                    //                           BorderRadius.circular(10),
                    //                       color: ColorHelper.kDarkGreen,
                    //                     ),
                    //                   ),
                    //                   SizedBox(width: 0.03 * w),
                    //                   Column(
                    //                     crossAxisAlignment:
                    //                         CrossAxisAlignment.start,
                    //                     mainAxisAlignment:
                    //                         MainAxisAlignment.spaceEvenly,
                    //                     children: [
                    //                       Row(
                    //                         children: [
                    //                           Container(
                    //                             height: 0.03 * h,
                    //                             width: 0.18 * w,
                    //                             decoration: BoxDecoration(
                    //                               color: ColorHelper.kgray,
                    //                               borderRadius:
                    //                                   BorderRadius.circular(5),
                    //                             ),
                    //                             child: Center(
                    //                               child: Text(
                    //                                 "Technology",
                    //                                 style: TextStyle(
                    //                                   fontSize: 0.03 * w,
                    //                                 ),
                    //                               ),
                    //                             ),
                    //                           ),
                    //                           SizedBox(width: 0.04 * w),
                    //                           Text(
                    //                             "Jan 4, 2022 . 3344 vistas",
                    //                             style: TextStyle(
                    //                               fontWeight: FontWeight.w700,
                    //                               color: ColorHelper.kgray,
                    //                               fontSize: 0.03 * w,
                    //                             ),
                    //                           ),
                    //                         ],
                    //                       ),
                    //                       Text(
                    //                         "Augmented Reality Trends\nfor 2022",
                    //                         style: TextStyle(
                    //                           fontWeight: FontWeight.w700,
                    //                           fontSize: 0.05 * w,
                    //                         ),
                    //                       ),
                    //                     ],
                    //                   ),
                    //                 ],
                    //               ),
                    //             ),
                    //           );
                    //         },
                    //       ),
                    //       ListView.builder(
                    //         itemCount: 5,
                    //         shrinkWrap: true,
                    //         itemBuilder: (context, index) {
                    //           return Container(
                    //             margin: EdgeInsets.symmetric(vertical: 10),
                    //             height: 0.15 * h,
                    //             width: double.infinity,
                    //             child: Padding(
                    //               padding: const EdgeInsets.symmetric(
                    //                   horizontal: 10),
                    //               child: Row(
                    //                 children: [
                    //                   Container(
                    //                     height: 0.12 * h,
                    //                     width: 0.25 * w,
                    //                     decoration: BoxDecoration(
                    //                       borderRadius:
                    //                           BorderRadius.circular(10),
                    //                       color: ColorHelper.kgray,
                    //                     ),
                    //                   ),
                    //                   SizedBox(width: 0.03 * w),
                    //                   Column(
                    //                     crossAxisAlignment:
                    //                         CrossAxisAlignment.start,
                    //                     mainAxisAlignment:
                    //                         MainAxisAlignment.spaceEvenly,
                    //                     children: [
                    //                       Row(
                    //                         children: [
                    //                           Container(
                    //                             height: 0.03 * h,
                    //                             width: 0.18 * w,
                    //                             decoration: BoxDecoration(
                    //                               color: ColorHelper.kgray,
                    //                               borderRadius:
                    //                                   BorderRadius.circular(5),
                    //                             ),
                    //                             child: Center(
                    //                               child: Text(
                    //                                 "Technology",
                    //                                 style: TextStyle(
                    //                                   fontSize: 0.03 * w,
                    //                                 ),
                    //                               ),
                    //                             ),
                    //                           ),
                    //                           SizedBox(width: 0.04 * w),
                    //                           Text(
                    //                             "Jan 4, 2022 . 3344 vistas",
                    //                             style: TextStyle(
                    //                               fontWeight: FontWeight.w700,
                    //                               color: ColorHelper.kgray,
                    //                               fontSize: 0.03 * w,
                    //                             ),
                    //                           ),
                    //                         ],
                    //                       ),
                    //                       Text(
                    //                         "Augmented Reality Trends\nfor 2022",
                    //                         style: TextStyle(
                    //                           fontWeight: FontWeight.w700,
                    //                           fontSize: 0.05 * w,
                    //                         ),
                    //                       ),
                    //                     ],
                    //                   ),
                    //                 ],
                    //               ),
                    //             ),
                    //           );
                    //         },
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    SizedBox(
                      height: 0.26 * h,
                      child: TabBarView(
                        controller: tabController,
                        children: [
                          ListView.builder(
                            shrinkWrap: true,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.symmetric(vertical: 10),
                                height: 0.10 * h,
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 0.10 * h,
                                        width: 0.20 * w,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: ColorHelper.kGreen,
                                        ),
                                      ),
                                      SizedBox(width: 0.03 * w),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: 0.02 * h,
                                                width: 0.15 * w,
                                                decoration: BoxDecoration(
                                                  color: ColorHelper.kgray,
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "Technology",
                                                    style: TextStyle(
                                                      fontSize: 0.02 * w,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 0.04 * w),
                                              Text(
                                                "Jan 4, 2022 . 3344 vistas",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  color: ColorHelper.kgray,
                                                  fontSize: 0.02 * w,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            "Augmented Reality Trends\nfor 2022",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 0.04 * w,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.symmetric(vertical: 10),
                                height: 0.10 * h,
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 0.10 * h,
                                        width: 0.20 * w,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: ColorHelper.kGreen,
                                        ),
                                      ),
                                      SizedBox(width: 0.03 * w),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: 0.02 * h,
                                                width: 0.15 * w,
                                                decoration: BoxDecoration(
                                                  color: ColorHelper.kgray,
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "Technology",
                                                    style: TextStyle(
                                                      fontSize: 0.02 * w,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 0.04 * w),
                                              Text(
                                                "Jan 4, 2022 . 3344 vistas",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  color: ColorHelper.kgray,
                                                  fontSize: 0.02 * w,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            "Augmented Reality Trends\nfor 2022",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 0.04 * w,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.symmetric(vertical: 10),
                                height: 0.10 * h,
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 0.10 * h,
                                        width: 0.20 * w,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: ColorHelper.kGreen,
                                        ),
                                      ),
                                      SizedBox(width: 0.03 * w),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: 0.02 * h,
                                                width: 0.15 * w,
                                                decoration: BoxDecoration(
                                                  color: ColorHelper.kgray,
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "Technology",
                                                    style: TextStyle(
                                                      fontSize: 0.02 * w,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 0.04 * w),
                                              Text(
                                                "Jan 4, 2022 . 3344 vistas",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  color: ColorHelper.kgray,
                                                  fontSize: 0.02 * w,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            "Augmented Reality Trends\nfor 2022",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 0.04 * w,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.symmetric(vertical: 10),
                                height: 0.10 * h,
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 0.10 * h,
                                        width: 0.20 * w,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: ColorHelper.kGreen,
                                        ),
                                      ),
                                      SizedBox(width: 0.03 * w),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: 0.02 * h,
                                                width: 0.15 * w,
                                                decoration: BoxDecoration(
                                                  color: ColorHelper.kgray,
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "Technology",
                                                    style: TextStyle(
                                                      fontSize: 0.02 * w,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 0.04 * w),
                                              Text(
                                                "Jan 4, 2022 . 3344 vistas",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  color: ColorHelper.kgray,
                                                  fontSize: 0.02 * w,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            "Augmented Reality Trends\nfor 2022",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 0.04 * w,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
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
