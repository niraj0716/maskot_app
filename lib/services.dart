import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:maskot_app/constant/color_constant.dart';
import 'package:maskot_app/services2.dart';
import 'package:maskot_app/services3.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    List gender = [
      "Tipo de servicio",
      "Buscar aquí....",
      "Todas las ciudades",
      "Todos los distritos",
      "Todas las áreas",
      "Buscar Servicio",
      'Agregar Servicio',
      'MIS SERVICIOS',
    ];
    String? select;
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Container(
            height: 0.10 * h,
            width: double.infinity,
            decoration: BoxDecoration(color: ColorHelper.kDarkGreen),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/maskot.png",
                  width: 0.4 * w,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35, bottom: 1, left: 1),
                  child: Text(
                    "PERU",
                    style: TextStyle(
                      fontSize: 0.06 * w,
                      color: ColorHelper.kWhite,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30, left: 40, top: 20),
                  child: Text(
                    "DIRECTORIO",
                    style: TextStyle(
                      fontFamily: "Biryani",
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
            height: 0.06 * h,
            width: double.infinity,
            color: Color(0xffB3D208),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: DropdownButton(
                underline: SizedBox(),
                isExpanded: true,
                icon: Icon(
                  Icons.search,
                  size: 0.08 * w,
                ),
                value: select,
                dropdownColor: Color(0xff094454),
                focusColor: Color(0xffB3D208),
                hint: Text(
                  "Lima - La Molina",
                  style: TextStyle(
                    color: Color(0xff094454),
                    fontWeight: FontWeight.bold,
                    fontSize: 0.07 * w,
                  ),
                ),
                items: List.generate(
                  gender.length,
                  (index) => DropdownMenuItem(
                    value: gender[index],
                    child: InkResponse(
                      onTap: () {
                        Get.to(Services3());
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 10),
                        height: 0.3 * h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: index <= 4
                              ? Colors.white
                              : index == 6
                                  ? Colors.green[800]
                                  : Color(0xffB3D208),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("${gender[index]}"),
                        ),
                      ),
                    ),
                  ),
                ),
                onChanged: (value) {
                  setState(() {});
                  select = value.toString();
                },
              ),
            ),
          ),
          // Container(
          //   height: 0.09 * h,
          //   width: double.infinity,
          //   decoration: BoxDecoration(
          //     color: Color(0xffB3D208),
          //   ),
          //   child: Padding(
          //     padding: const EdgeInsets.symmetric(horizontal: 10),
          //     child: Row(
          //       children: [
          //         // Text(
          //         //   "Lima - La Molina",
          //         //   style: TextStyle(
          //         //     color: Color(0xff094454),
          //         //     fontWeight: FontWeight.bold,
          //         //     fontSize: 0.07 * w,
          //         //   ),
          //         // ),
          //         // Spacer(),
          //         // InkResponse(
          //         //   onTap: () {
          //         //
          //         //
          //         //   },
          //         //   child: Icon(
          //         //     Icons.search,
          //         //     color: Colors.white,
          //         //     size: 0.08 * w,
          //         //   ),
          //         // ),
          //       ],
          //     ),
          //   ),
          // ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) {
                return InkResponse(
                  onTap: () {
                    Get.to(Services2());
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      margin: EdgeInsets.only(top: 30),
                      height: 300,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      child: Column(
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                height: 0.3 * h,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xff094454),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/Imagen 3.png"),
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 0.01 * h,
                                left: 0.02 * w,
                                child: Icon(
                                  Icons.card_travel,
                                  size: 0.07 * w,
                                ),
                              ),
                              Positioned(
                                top: 0.01 * h,
                                right: 0.02 * w,
                                child: Icon(
                                  Icons.favorite_border,
                                  size: 0.07 * w,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 0.08 * h,
                            width: double.infinity,
                            color: Color(0xff094454),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: [
                                  Text(
                                    "Titulo del anuncio",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 0.06 * w,
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 0.035 * h,
                                    width: 0.20 * w,
                                    decoration: BoxDecoration(
                                      color: Color(0xffB3D208),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Gatos",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff094454),
                                          fontSize: 0.05 * w,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
