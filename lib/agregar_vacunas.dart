import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'constant/color_constant.dart';

class AgregarVacunas extends StatefulWidget {
  const AgregarVacunas({super.key});

  @override
  State<AgregarVacunas> createState() => _AgregarVacunasState();
}

class _AgregarVacunasState extends State<AgregarVacunas> {
  List gender = [
    'Inactivated vaccines',
    'Live-attenuated vaccines',
    'Messenger RNA (mRNA) vaccines',
    'Subunit, recombinant, polysaccharide',
    'Toxoid vaccines',
    'Viral vector vaccines',
  ];
  String? select;
  DateTime initial = DateTime.now();
  DateTime dateTime = DateTime.now();
  DateFormat format = DateFormat("dd/MM/yyyy : hh:mm:ss");
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
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
                    Text(
                      "Mis Vacunas",
                      style: TextStyle(
                        color: ColorHelper.kDarkBlue,
                        fontWeight: FontWeight.bold,
                        fontSize: 0.04 * w,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 0.02 * h),
                  TextField(
                    textAlignVertical: TextAlignVertical.bottom,
                    style: TextStyle(fontSize: 0.03 * w),
                    decoration: InputDecoration(
                      hintText: "Nombre del negocio",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: ColorHelper.kblack,
                          width: 3,
                        ),
                      ),
                      filled: true,
                      constraints: BoxConstraints(
                        maxHeight: 0.05 * h,
                        maxWidth: double.infinity,
                      ),
                    ),
                  ),
                  SizedBox(height: 0.02 * h),
                  Row(
                    children: [
                      TextField(
                        textAlignVertical: TextAlignVertical.bottom,
                        style: TextStyle(fontSize: 0.03 * w),
                        decoration: InputDecoration(
                          hintText: "Fecha de nacimiento",
                          suffixIcon: Icon(Icons.calendar_month_sharp),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: ColorHelper.kblack,
                              width: 3,
                            ),
                          ),
                          filled: true,
                          constraints: BoxConstraints(
                            maxWidth: 0.45 * w,
                            maxHeight: 0.05 * h,
                          ),
                        ),
                      ),
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
                                height: 0.12 * h,
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
                                            Icons.photo,
                                            size: 0.05 * w,
                                          ),
                                          SizedBox(width: 0.04 * w),
                                          Text(
                                            "Elegir documento",
                                            style: TextStyle(
                                              fontSize: 0.04 * w,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 0.02 * h),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.delete,
                                            size: 0.05 * w,
                                          ),
                                          SizedBox(width: 0.04 * w),
                                          Text(
                                            "Eliminar documento actual",
                                            style: TextStyle(
                                              fontSize: 0.04 * w,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 0.02 * h),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          height: 0.05 * h,
                          width: 0.45 * w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: ColorHelper.kDarkBlue,
                          ),
                          child: Center(
                            child: Text(
                              "Agregra PDF",
                              style: TextStyle(
                                color: ColorHelper.kWhite,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 0.02 * h),
                  Container(
                    height: 0.06 * h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ColorHelper.kGreen,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Ingresar Vacuna",
                        style: TextStyle(
                          fontSize: 0.04 * w,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Container(
//   height: 0.06 * h,
//   width: double.infinity,
//   decoration: BoxDecoration(
//     color: ColorHelper.kGreen,
//   ),
//   child: Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: Text(
//       "Mis Vacunas",
//       style: TextStyle(
//         color: ColorHelper.kDarkBlue,
//         fontWeight: FontWeight.w800,
//         fontSize: 0.06 * w,
//       ),
//     ),
//   ),
// ),
// SizedBox(height: 0.02 * h),
// Padding(
//   padding: const EdgeInsets.symmetric(horizontal: 10),
//   child: Container(
//     height: 0.06 * h,
//     width: double.infinity,
//     decoration: BoxDecoration(
//         // color: Colors.black,
//         borderRadius: BorderRadius.circular(10),
//         border: Border.all(
//           color: ColorHelper.kBlack,
//         )),
//     child: DropdownButton(
//       underline: SizedBox(),
//       isExpanded: true,
//       icon: Icon(
//         Icons.arrow_drop_down,
//         size: 0.08 * w,
//       ),
//       value: select,
//       // dropdownColor: ColorHelper.kDarkBlue,
//       focusColor: ColorHelper.kGreen,
//       hint: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Text(
//           "Tipo de vacuna",
//           style: TextStyle(
//             color: ColorHelper.kDarkBlue,
//             fontWeight: FontWeight.bold,
//             fontSize: 0.05 * w,
//           ),
//         ),
//       ),
//       items: List.generate(
//         gender.length,
//         (index) => DropdownMenuItem(
//           value: gender[index],
//           child: Container(
//             margin: EdgeInsets.only(bottom: 10),
//             height: 0.3 * h,
//             width: double.infinity,
//             decoration: BoxDecoration(
//               color: ColorHelper.kWhite,
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text("${gender[index]}"),
//             ),
//           ),
//         ),
//       ),
//       onChanged: (value) {
//         setState(() {});
//         select = value.toString();
//       },
//     ),
//   ),
// ),
// SizedBox(height: 0.02 * h),
// Row(
//   children: [
//     // Container(
//     //   height: 0.07 * h,
//     //   width: 0.45 * w,
//     //   decoration: BoxDecoration(
//     //     borderRadius: BorderRadius.circular(10),
//     //     border: Border.all(
//     //       color: Colors.black,
//     //     ),
//     //   ),
//     //   child: Row(
//     //     children: [
//     //       // Center(
//     //       //   child: Text(
//     //       //     format.format(initial),
//     //       //   ),
//     //       // ),
//     //       // IconButton(
//     //       //   onPressed: () async {
//     //       //     await showDatePicker(
//     //       //         context: context,
//     //       //         initialDate: initial,
//     //       //         firstDate: DateTime(1990),
//     //       //         lastDate: DateTime(2100));
//     //       //     setState(() {});
//     //       //   },
//     //       //   icon: Icon(Icons.calendar_month),
//     //       // ),
//     //     ],
//     //   ),
//     // ),
//     TextField(
//       // controller: passwordcontroller,
//       decoration: InputDecoration(
//         constraints: BoxConstraints(
//           maxWidth: 0.45 * w,
//           maxHeight: 0.07 * h,
//         ),
//         hintText: format.format(dateTime),
//         suffixIcon: InkResponse(
//           onTap: () async {
//             await showDatePicker(
//                 context: context,
//                 initialDate: initial,
//                 firstDate: DateTime(1990),
//                 lastDate: DateTime(2100));
//             setState(() {});
//           },
//           child: Icon(
//             Icons.calendar_month,
//           ),
//         ),
//         hintStyle: TextStyle(
//           fontSize: 0.05 * w,
//           fontWeight: FontWeight.w400,
//         ),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//     ),
//     Spacer(),
//     TextField(
//       // controller: passwordcontroller,
//       decoration: InputDecoration(
//         constraints: BoxConstraints(),
//         hintText: 'Género',
//         hintStyle: TextStyle(
//           fontSize: 0.05 * w,
//           fontWeight: FontWeight.w400,
//         ),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//     ),
//   ],
// ),
// SizedBox(height: 0.02 * h),
// Container(
//   height: 0.05 * h,
//   width: double.infinity,
//   decoration: BoxDecoration(
//     color: ColorHelper.kGreen,
//   ),
//   child: Padding(
//     padding: const EdgeInsets.symmetric(horizontal: 10),
//     child: Center(
//       child: Text(
//         "Ingresar Vacuna",
//         style: TextStyle(
//           color: ColorHelper.kDarkBlue,
//           fontWeight: FontWeight.w800,
//           fontSize: 0.06 * w,
//         ),
//       ),
//     ),
//   ),
// ),
