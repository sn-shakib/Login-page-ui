import 'dart:developer';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:login_signup_page_ui/Login_Page.dart';
class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController usercontroler=TextEditingController();
  TextEditingController emailcontroler=TextEditingController();
  TextEditingController phonecontroler=TextEditingController();
  TextEditingController passwordcontroler=TextEditingController();
  //User?currentUser=FirebaseAuth.instance.currentUser;
  bool isvisible=false;
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const  Text('SignUp Page'),
      ),
      body: ListView(
          children: [Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 250,

              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child:   FadeInLeft(
                  duration: Duration(milliseconds: 1800),
                  child: TextFormField(
                    controller: usercontroler,
                    decoration:  InputDecoration(

                      suffixIcon: usercontroler.text.isEmpty ? const Text('') : GestureDetector(
                        onTap: (){
                          usercontroler.clear();
                          setState(() {
                          });
                        },
                        child: const Icon(Icons.close),
                      ) ,
                      hintText: 'User name',
                    ),
                    // validator: (value) {
                    //   if (value == null || value.isEmpty) {
                    //     return '*Required';
                    //   }
                    //   return null;
                    // },
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child:  FadeInLeft(
                  duration: Duration(milliseconds: 1800),
                  child: TextFormField(
                    controller: emailcontroler,
                    decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.email_sharp),
                      hintText: 'Email',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '*Required';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    // validator: (value){
                    //   if(value==null !! value.isEmpty{
                    //     return *Required;
                    //   });
                    // },
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child:  FadeInLeft(
                  duration: Duration(milliseconds: 1800),
                  child: TextFormField(
                    controller: phonecontroler,
                    decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.phone),
                      hintText: 'Phone',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '*Required';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    maxLength: 11,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child:  FadeInLeft(
                  duration: Duration(milliseconds: 1800),
                  child: TextFormField(
                    obscureText: isvisible,
                    controller: passwordcontroler,
                    decoration:  InputDecoration(
                      prefixIcon: const Icon(Icons.password),
                      suffixIcon: GestureDetector(
                          onTap: (){
                            isvisible=!isvisible;
                            setState(() {

                            });
                          },
                          child: Icon( isvisible ? Icons.visibility_off : Icons.visibility)),
                      hintText: 'Password',
                    ),
                    // validator: (value) {
                    //   if (value == null || value.isEmpty) {
                    //     return '*Required';
                    //   }
                    //   return null;
                    // },
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(onPressed: (){
                //UserSignUp();
                // var username=usercontroler.text.trim();
                // var useremail=emailcontroler.text.trim();
                // var userphone=phonecontroler.text.trim();
                // var userpassword=passwordcontroler.text.trim();
                // FirebaseAuth.instance.createUserWithEmailAndPassword(email: useremail, password: userpassword).then((value) => {
                // log('User Created'),
                //   FirebaseFirestore.instance.collection("users").doc(emailcontroler.text.trim()).set({
                //     'username':username,
                //     'useremail':useremail,
                //     'userphone':userphone,
                //     'userpassword':userpassword,
                //   }),
                //   log('Data added'),
                // });
              }, child: const Text('SignUp',style: TextStyle(color: Colors.black),),),
              const SizedBox(
                height: 10,
              ),
              MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginPage()));
                },
                child: const Card(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text('Already have an account?',style: TextStyle(color: Colors.black),),
                    )),
              ),
            ],
          ),]
      ),
    );
  }
  // void  UserSignUp() async{
  //   //FirebaseAuth auth = FirebaseAuth.instance;
  //   if(usercontroler.text.isNotEmpty && passwordcontroler.text.isNotEmpty && emailcontroler.text.isNotEmpty && phonecontroler.text.isNotEmpty){
  //     try {
  //       UserCredential userCredential = await FirebaseAuth.instance
  //           .createUserWithEmailAndPassword(
  //         email: emailcontroler.text,
  //         password: passwordcontroler.text,);
  //       saverUserData();
  //       Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
  //     } on FirebaseAuthException catch (e) {
  //       if (e.code == 'weak-password') {
  //         showErrorDialog('The password provided is too weak.');
  //         print('The password provided is too weak.');
  //       } else if (e.code == 'email-already-in-use') {
  //         showErrorDialog('The account already exists for that email.');
  //         print('The account already exists for that email.');
  //       }
  //     } catch (e) {
  //       showErrorDialog(e.toString());
  //       print(e);
  //     }
  //   }else{
  //     showErrorDialog('Please fill all fields ');
  //   }
  // }
  // showErrorDialog(String errorMsg){
  //   showDialog(context: context, builder: (contex){
  //     return AlertDialog(
  //       title:  Text('warning'.toUpperCase(),style:const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
  //       content: Text(errorMsg),
  //       actions: [
  //         TextButton(onPressed: (){
  //           Navigator.pop(context);
  //         }, child:  const Text('Ok',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
  //         )
  //       ],
  //     );
  //   });
  // }
  // saverUserData(){
  //   FirebaseFirestore firestore = FirebaseFirestore.instance;
  //   firestore.collection('users').doc(emailcontroler.text).set({
  //     'mail':emailcontroler.text,
  //     'phone':phonecontroler.text,
  //     'name':usercontroler.text,
  //     'password':passwordcontroler.text,
  //     'createdate':DateTime.now(),
  //     'userid':currentUser !.uid,
  //   });
  // }
}
