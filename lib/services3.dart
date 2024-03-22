import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'addImage.dart';

class Services3 extends StatefulWidget {
  const Services3({super.key});

  @override
  State<Services3> createState() => _Services3State();
}

class _Services3State extends State<Services3> {
  bool isCheck = false;
  String time = "";
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
                  color: Color(0xff094454),
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
                          color: Colors.white,
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
                          color: Color(0xffB3D208),
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
                  children: [
                    SizedBox(height: 0.02 * h),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Nombre del negocio",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 3,
                          ),
                        ),
                        constraints: BoxConstraints(
                          maxHeight: 0.07 * h,
                          maxWidth: double.infinity,
                        ),
                      ),
                    ),
                    SizedBox(height: 0.02 * h),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Servicios",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 3,
                          ),
                        ),
                        constraints: BoxConstraints(
                          maxHeight: 0.07 * h,
                          maxWidth: double.infinity,
                        ),
                      ),
                    ),
                    SizedBox(height: 0.02 * h),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Descripción del servicio",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 3,
                          ),
                        ),
                        constraints: BoxConstraints(
                          maxHeight: 0.10 * h,
                          maxWidth: double.infinity,
                        ),
                      ),
                    ),
                    SizedBox(height: 0.02 * h),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Mascotas atendidas",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 3,
                          ),
                        ),
                        constraints: BoxConstraints(
                          maxHeight: 0.10 * h,
                          maxWidth: double.infinity,
                        ),
                      ),
                    ),
                    SizedBox(height: 0.02 * h),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Ubicación",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 3,
                          ),
                        ),
                        constraints: BoxConstraints(
                          maxHeight: 0.10 * h,
                          maxWidth: double.infinity,
                        ),
                      ),
                    ),
                    SizedBox(height: 0.02 * h),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Dirección",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 3,
                          ),
                        ),
                        constraints: BoxConstraints(
                          maxHeight: 0.10 * h,
                          maxWidth: double.infinity,
                        ),
                      ),
                    ),
                    SizedBox(height: 0.02 * h),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Distrito",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 3,
                          ),
                        ),
                        constraints: BoxConstraints(
                          maxHeight: 0.10 * h,
                          maxWidth: double.infinity,
                        ),
                      ),
                    ),
                    SizedBox(height: 0.02 * h),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Distrito",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 3,
                          ),
                        ),
                        constraints: BoxConstraints(
                          maxHeight: 0.10 * h,
                          maxWidth: double.infinity,
                        ),
                      ),
                    ),
                    SizedBox(height: 0.02 * h),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.facebook),
                        hintText: "facebook.com",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 3,
                          ),
                        ),
                        constraints: BoxConstraints(
                          maxHeight: 0.10 * h,
                          maxWidth: double.infinity,
                        ),
                      ),
                    ),
                    SizedBox(height: 0.02 * h),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.facebook),
                        hintText: "Instagram.com",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 3,
                          ),
                        ),
                        constraints: BoxConstraints(
                          maxHeight: 0.10 * h,
                          maxWidth: double.infinity,
                        ),
                      ),
                    ),
                    SizedBox(height: 0.02 * h),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.tiktok),
                        hintText: "Tik Tok",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 3,
                          ),
                        ),
                        constraints: BoxConstraints(
                          maxHeight: 0.10 * h,
                          maxWidth: double.infinity,
                        ),
                      ),
                    ),
                    SizedBox(height: 0.02 * h),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.call),
                        hintText: "Enlace a WhatsApp",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 3,
                          ),
                        ),
                        constraints: BoxConstraints(
                          maxHeight: 0.10 * h,
                          maxWidth: double.infinity,
                        ),
                      ),
                    ),
                    SizedBox(height: 0.02 * h),
                    Row(
                      children: [
                        Text(
                          "Horario de atención",
                          style: TextStyle(
                            fontSize: 0.04 * w,
                          ),
                        ),
                        Spacer(),
                        time == null
                            ? ElevatedButton(
                                onPressed: () {
                                  showTimePicker(
                                          cancelText: "Exit",
                                          confirmText: "Done",
                                          helpText: "Time",
                                          errorInvalidText: "Invaild",
                                          context: context,
                                          initialTime:
                                              TimeOfDay(hour: 12, minute: 60))
                                      .then((value) {
                                    time = value!.format(context);
                                    setState(() {});
                                  });
                                },
                                child: Text("Time"))
                            : Text("${time}"),
                      ],
                    ),
                    SizedBox(height: 0.02 * h),
                    Row(
                      children: [
                        Text(
                          "Servicio a Domicilio",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 0.05 * w,
                          ),
                        ),
                        Checkbox(
                          value: isCheck,
                          onChanged: (value) {
                            setState(
                              () {
                                isCheck = !isCheck;
                              },
                            );
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 0.0 * h),
                    Row(
                      children: [
                        Text(
                          "Atención de emergencias",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 0.05 * w,
                          ),
                        ),
                        Checkbox(
                          value: isCheck,
                          onChanged: (value) {
                            setState(
                              () {
                                isCheck = !isCheck;
                              },
                            );
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 0.02 * h),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Distrito",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 3,
                          ),
                        ),
                        constraints: BoxConstraints(
                          maxHeight: 0.10 * h,
                          maxWidth: double.infinity,
                        ),
                      ),
                    ),
                    SizedBox(height: 0.02 * h),
                    Row(
                      children: [
                        InkResponse(
                          onTap: () {
                            Get.to(AddImage());
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Galería",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 0.05 * w,
                                ),
                              ),
                              SizedBox(height: 0.01 * h),
                              Container(
                                height: 0.11 * h,
                                width: 0.25 * w,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 2),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Icon(
                                  (Icons.add),
                                  size: 0.09 * w,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 0.09 * w),
                        InkResponse(
                          // onTap: () {
                          //   Get.to(AddVideo());
                          // },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Vídeo",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 0.05 * w,
                                ),
                              ),
                              SizedBox(height: 0.01 * h),
                              Container(
                                height: 0.11 * h,
                                width: 0.25 * w,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 2),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Icon(
                                  (Icons.add),
                                  size: 0.09 * w,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 0.02 * h),
                    Container(
                      width: double.infinity,
                      height: 0.07 * h,
                      decoration: BoxDecoration(
                        color: Color(0xffB3D208),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Agregar Servicio",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                            color: Color(0xff094454),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 0.05 * h),
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
