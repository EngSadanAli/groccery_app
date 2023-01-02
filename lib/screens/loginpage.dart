import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:groccery_app/screens/signupscreen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // show the password or not
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: Column(
        children: [
        Padding(
          padding: const EdgeInsets.only(top: 89),
          child: Container(
            child:Image.asset('assets/images/karela.png'),
          ),

        ),
          SizedBox(height: 80.h,),
          Padding(
            padding: const EdgeInsets.only(left:25,right: 24),
            child: Container(
              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text('Loging',style:TextStyle(fontSize: 26,fontWeight: FontWeight.w600)),
                   SizedBox(height: 10.h,),
                   Text('Enter your email and password',style: TextStyle(fontSize: 16,color: Color(0xfff7C7C7C)),),
        SizedBox(height: 20.h,),
                   TextField(
                     obscureText: true,
                     decoration: InputDecoration(
                       border: UnderlineInputBorder(),
                       labelText: 'Email',
                       hintText: 'syedsadan805@gmail.com',
                     ),
                   ),
               SizedBox(height: 30.h,),
                    TextField(
                     obscureText: _isObscure,
                     decoration: InputDecoration(
                         labelText: 'Password',
                         // this button is used to toggle the password visibility
                         suffixIcon: IconButton(
                             icon: Icon(
                                 _isObscure ? Icons.visibility : Icons.visibility_off),
                             onPressed: () {
                               setState(() {
                                 _isObscure = !_isObscure;
                               });
                             })),
                   ),
              SizedBox(height: 20.h,),
              Padding(
                padding: const EdgeInsets.only(left: 200),
                child: Text('Forgot Password?'),
              ),
                   SizedBox(height: 30.h,),
                   Container(

                     alignment: Alignment.center,
                     decoration: BoxDecoration(
                       color: Color(0xff53B175),
                       borderRadius: BorderRadius.circular(15),
                     ),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         TextButton(
                             onPressed: () {
                               Get.to(() => SignUpScreen());
                             },
                             child: Text(
                               "Submit",
                               style: TextStyle(
                                 color: Color(0xfffFCFCFC),fontSize: 16,
                               ),
                             )),
                       ],
                     ),
                   ),
                   SizedBox(height:20),
                   Padding(
                     padding: const EdgeInsets.only(left:60),
                     child: RichText(
                       text: TextSpan(
                         style: TextStyle(color: Colors.black, fontSize: 14,),
                         children: <TextSpan>[
                           TextSpan(text: "Don't have an Account ", style: TextStyle(color: Colors.black),),

                           TextSpan(text:'SignUp',style:TextStyle(decoration: TextDecoration.underline,color:Color(0xfff53B175))),
                         ],
                       ),
                     ),
                   )
                 ],
              )
            ),
          )
      ],),
    ) ,);
  }
}
