import 'package:flutter/material.dart';
class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController forgotpasswordcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const  Text('Forgot Password'),
      ),
      body: ListView(
        children: [Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 300,

            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child:  TextField(
                controller: forgotpasswordcontroller,
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.email_sharp),
                  hintText: 'Email',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: (){},
              // onPressed: () async {
              //   var forgotEmail=forgotpasswordcontroller.text.trim();
              //   try{
              //     await FirebaseAuth.instance.sendPasswordResetEmail(email: forgotEmail).then((value) => {print('Email send')});
              //   } on FirebaseAuthException catch(e){
              //     print('error$e');
              //   }
              //   Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
              // },
              child: const Text('Forgot Password',style: TextStyle(color: Colors.black),),),

          ],
        ),
        ],
      ),
    );
  }
}
