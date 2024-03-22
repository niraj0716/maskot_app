import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'bottom_navgation_bar.dart';
import 'create_account.dart';
import 'forgot_password.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/image1.png"), fit: BoxFit.cover),
          gradient: LinearGradient(colors: [
            Color(0xff094454),
            Color(0xff40723C),
            Color(0xffB3D208),
          ], end: Alignment.bottomCenter, begin: Alignment.topCenter),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 0.1 * h),
                Image.asset(
                  "assets/images/maskot.png",
                  scale: 0.04 * w,
                ),
                SizedBox(height: 0.03 * h),
                TextField(
                  textAlignVertical: TextAlignVertical.center,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                    color: Color(0xffB3D208),
                  ),
                  decoration: InputDecoration(
                    fillColor: Colors.white10,
                    filled: true,
                    constraints: BoxConstraints(
                      maxHeight: 0.07 * h,
                      maxWidth: double.infinity,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffB3D208),
                      ),
                    ),
                    hintText: "Email",
                    hintStyle: TextStyle(
                      fontSize: 22,
                      color: Color(0xffB3D208),
                    ),
                  ),
                ),
                SizedBox(height: 0.02 * h),
                InkResponse(
                  onTap: () {
                    Get.defaultDialog(
                      title: "Dialog",
                      titleStyle: TextStyle(
                        fontSize: 40,
                      ),
                      middleText: "hello",
                      middleTextStyle: TextStyle(fontSize: 30),
                      // backgroundColor: Colors.purple,

                      // customise the middle text
                      content: Row(
                        children: [
                          CircularProgressIndicator(),
                          SizedBox(
                            width: 20,
                          ),
                          Text("hello"),
                        ],
                      ),

                      // default cancel and confirm buttom
                      textCancel: "Cnacel",
                      cancelTextColor: Colors.black,
                      textConfirm: "Confirm",
                      confirmTextColor: Colors.black,
                      onCancel: () {},
                      onConfirm: () {},
                      //color of cancel and confirm button
                      buttonColor: Colors.green,
                      actions: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Action 1"),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Action 2"),
                        ),
                      ],
                      barrierDismissible: false,
                    );
                  },
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                      color: Color(0xffB3D208),
                    ),
                    decoration: InputDecoration(
                      fillColor: Colors.white10,
                      filled: true,
                      constraints: BoxConstraints(
                        maxHeight: 0.07 * h,
                        maxWidth: double.infinity,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffB3D208),
                        ),
                      ),
                      hintText: "Contraseña",
                      hintStyle: TextStyle(
                        color: Color(0xffB3D208),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 0.02 * h),
                InkResponse(
                  onTap: () {
                    Get.to(ForgotPassword());
                  },
                  child: Text(
                    "Olvidé mi contraseña",
                    style: TextStyle(
                      fontSize: 0.05 * w,
                      color: Color(0xffB3D208),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 0.03 * h),
                Container(
                  width: double.infinity,
                  height: 0.07 * h,
                  decoration: BoxDecoration(
                    color: Color(0xffB3D208),
                  ),
                  child: Center(
                    child: InkResponse(
                      onTap: () {
                        Get.to(BottomNavgationBar());
                      },
                      child: Text(
                        "Ingresar",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                          color: Color(0xff094454),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 0.02 * h),
                Text(
                  "ó",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                    color: Color(0xffB3D208),
                  ),
                ),
                SizedBox(height: 0.02 * h),
                Container(
                  width: double.infinity,
                  height: 0.07 * h,
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    border: Border.all(
                      color: Color(0xffB3D208),
                      width: 1.3,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Facebook",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                        color: Color(0xff094454),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 0.02 * h),
                InkResponse(
                  onTap: () {
                    Get.to(CreateAccount());
                  },
                  child: Container(
                    width: double.infinity,
                    height: 0.07 * h,
                    decoration: BoxDecoration(
                      color: Colors.white10,
                      border: Border.all(
                        color: Color(0xffB3D208),
                        width: 1.3,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Crear Cuenta",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                          color: Color(0xff094454),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 0.02 * h),
                Container(
                  width: double.infinity,
                  height: 0.07 * h,
                  decoration: BoxDecoration(
                    color: Color(0xffB3D208),
                    border: Border.all(
                      color: Color(0xff094454),
                      width: 1.3,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Invitado",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                        color: Color(0xff094454),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class ForgotPassword extends StatefulWidget {
//   const ForgotPassword({super.key});
//
//   @override
//   State<ForgotPassword> createState() => _ForgotPasswordState();
// }
//
// class _ForgotPasswordState extends State<ForgotPassword> {
//   @override
//   Widget build(BuildContext context) {
//     final w = MediaQuery.of(context).size.width;
//     final h = MediaQuery.of(context).size.height;
//     return Scaffold(
//       backgroundColor: Color(0xff094454),
//       body: SingleChildScrollView(
//         child: SafeArea(
//           child: Column(
//             children: [
//               Container(
//                 height: 0.11 * h,
//                 width: double.infinity,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Image.asset(
//                       "assets/images/splash.png",
//                       width: 0.4 * w,
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 height: 0.07 * h,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   color: Color(0xffB3D208),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(10),
//                   child: Text(
//                     "Restablecer la contraseña",
//                     style: TextStyle(
//                       color: Color(0xff094454),
//                       fontWeight: FontWeight.w700,
//                       fontSize: 0.06 * w,
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 0.02 * h),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 10),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Si olvidaste tu contraseña puedes restablecerla ingresando tu correo de registro.",
//                       style: TextStyle(
//                         fontSize: 0.06 * w,
//                         fontWeight: FontWeight.w400,
//                         color: Color(0xffF3F4F4),
//                       ),
//                     ),
//                     SizedBox(height: 0.04 * h),
//                     Text(
//                       "Correo eléctronico",
//                       style: TextStyle(
//                         fontWeight: FontWeight.w400,
//                         fontSize: 0.05 * w,
//                         color: Color(0xffF3F4F4),
//                       ),
//                     ),
//                     SizedBox(height: 0.01 * h),
//                     TextField(
//                       textAlignVertical: TextAlignVertical.center,
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         fontWeight: FontWeight.w700,
//                         fontSize: 25,
//                         color: Color(0xffB3D208),
//                       ),
//                       decoration: InputDecoration(
//                         fillColor: Colors.white,
//                         filled: true,
//                         constraints: BoxConstraints(
//                           maxHeight: 0.07 * h,
//                           maxWidth: double.infinity,
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 0.06 * h),
//                     InkResponse(
//                       onTap: () {
//                         Get.back();
//                       },
//                       child: Center(
//                         child: Container(
//                           width: 0.8 * w,
//                           height: 0.08 * h,
//                           decoration: BoxDecoration(
//                             color: Color(0xffB3D208),
//                             borderRadius: BorderRadius.circular(30),
//                           ),
//                           child: Center(
//                             child: Text(
//                               "Enviar contraseña temporal",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.w700,
//                                 fontSize: 22,
//                                 color: Color(0xff094454),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
