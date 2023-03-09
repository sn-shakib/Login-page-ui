import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

import 'Login_Page.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
  body: PageView(
         children: [
           Stack(
             children: [
               SizedBox(
                   height: double.infinity,
                   child: Image.asset('assets/images/login.jpg',fit: BoxFit.cover,)),
               Padding(
                 padding: const EdgeInsets.only(top: 170,left: 25),
                 child: Column(
                   children: [
                     Align(
                         alignment: Alignment.centerLeft,
                         child: Text('Welcome',style: GoogleFonts.abel(color: Colors.white,fontSize: 45),)),
                     Align(
                         alignment: Alignment.centerLeft,
                         child: Text('Get Start By \n Creating Your Account',style: GoogleFonts.andadaPro(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)),
                   ],
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(top: 440,left: 35),
                 child: Column(
                   children: [
                     InkWell(
                       onTap: (){},
                       child: Container(
                       height:60,
                       width: 340,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(15),
                         color: Color(0xFF222325),
                       ),
                       child: Center(child: Text('Sign Up',style: GoogleFonts.andadaPro(color: Colors.white,fontSize: 18),)),
                   ),
                     ),
                     SizedBox(height: 10,),
                     InkWell(
                       onTap: (){},
                       child: Container(
                       height:60,
                       width: 340,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(15),
                         color: Color(0xFF222325),
                       ),child: Padding(
                         padding: const EdgeInsets.all(15),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                              Image.asset('assets/images/googleicon.png',height: 22,),
                             Center(child: Text('Continue With Google',style: GoogleFonts.andadaPro(color: Colors.white,fontSize: 20),))
                           ],
                         ),
                       ),
                         ),
                     ),
                     SizedBox(height: 10,),
                     InkWell(
                       onTap: (){},
                       child: Container(
                         height:60,
                         width: 340,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(15),
                           color: Color(0xFF222325),
                         ),child: Padding(
                         padding: const EdgeInsets.all(15),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Image.asset('assets/images/appleicon.png',height: 30,),
                             Center(child: Text('Continue With Apple',style: GoogleFonts.andadaPro(color: Colors.white,fontSize: 20),))
                           ],
                         ),
                       ),
                       ),
                     ),
                     SizedBox(height: 15,),
                  InkWell(
                     onTap: (){
                       Get.to(LoginPage());
                     },
                    child: Text('Login',style: GoogleFonts.andadaPro(color: Colors.white,fontSize: 25),),
                  )
                 ],),
               ),
             ],
           ),
         ],
        ),
    );
  }
}
extension padding on  num  {

}