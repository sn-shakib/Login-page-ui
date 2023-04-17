import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_signup_page_ui/SplashScreen.dart';
import 'package:login_signup_page_ui/forgetPassword.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    bool obscureText=true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     body: PageView(
            children: [
              Stack(
                 alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(
                      height: double.infinity,
                      child: Image.asset('assets/images/login.jpg',fit: BoxFit.cover,)),
                 Column(
                   children:  [
                     InkWell(
                       onTap: (){
                         Get.to(const SplashScreen());
                       },
                       child: const Padding(
                         padding: EdgeInsets.only(top: 25,right: 400),
                         child: Icon(Icons.arrow_back_ios_new,color: Colors.red,size: 35,),
                       ),
                     ),
                   ],
                 ),
                 Container(
                   width: double.infinity,
                   height: 400,
                   decoration: const BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.only(
                       topRight: Radius.circular(25),
                      topLeft: Radius.circular(25)
                     )
                   ),
                   child:Column(
                     children: [
                       Align(
                           alignment: Alignment.centerLeft,
                           child: Padding(
                             padding: const EdgeInsets.all(20),
                             child: Text('Log in',style: GoogleFonts.aclonica(fontSize: 25),),
                           )),
                       Padding(
                         padding: const EdgeInsets.all(20),
                         child: FadeInLeft(
                           duration: Duration(milliseconds: 1800),
                           child: TextFormField(
                             style: GoogleFonts.andadaPro(fontSize: 20),
                             decoration: const InputDecoration(
                                    hintText: 'Email',
                               suffix: Icon(Icons.mail_lock_outlined)
                             ),
                           ),
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(20),
                         child: FadeInLeft(
                           duration: Duration(milliseconds: 1800),
                           child: TextFormField(
                             obscureText: obscureText,
                             style: GoogleFonts.andadaPro(fontSize: 20),
                             decoration:  InputDecoration(
                                 hintText: 'Password',
                                 suffix: GestureDetector(
                                     onTap: (){
                                       setState(() {
                                         obscureText=!obscureText;
                                       });
                                     },
                                     child: obscureText? Icon(Icons.visibility_sharp):
                                     Icon(Icons.visibility_off)),
                             ),
                           ),
                         ),
                       ),
                       const SizedBox(
                         height: 30,
                       ),
                       Padding(
                         padding: const EdgeInsets.all(15),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             InkWell(
                              onTap: (){
                             Get.to(const ForgetPassword());
                              },
                               child: Container(
                                 height: 60,
                                 width: 210,
                                 decoration:  BoxDecoration(
                                   color: Colors.white70,
                                 border: Border.all(
                                   color: Colors.black
                                 ),
                                 ),
                                   child: Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Row(
                                         children: [
                                       Text('ForgotPassword',style: GoogleFonts.andadaPro(fontSize: 22),),
                                       SizedBox(width: 5,),
                                       const Icon(Icons.arrow_forward_ios,size: 18,color: Colors.blue,),
                                     ]

                                     ),
                                   )
                               ),
                             ),
                             InkWell(
                               onTap: (){

                               },
                               child: Container(
                                   height: 60,
                                   width: 140,
                                   decoration:  BoxDecoration(
                                       color: Colors.white,
                                     border: Border.all(
                                         color: Colors.black
                                     ),
                                   ),
                                   child: Padding(
                                     padding: const EdgeInsets.only(left: 30),
                                     child: Row(
                                         children: [
                                           Text('Login',style: GoogleFonts.andadaPro(fontSize: 22),),
                                           const SizedBox(width: 5,),
                                           const Icon(Icons.arrow_forward_ios,size: 18,color: Colors.blue,),
                                         ]

                                     ),
                                   )
                               ),
                             ),
                           ],
                         ),
                       )
                     ],
                   ),
                 ),
                ],
              )
            ],
     ),
    );
  }
}
