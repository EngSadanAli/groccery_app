import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:groccery_app/screens/verificaionscreen.dart';

class numberscreen extends StatefulWidget {
  const numberscreen({Key? key}) : super(key: key);

  @override
  State<numberscreen> createState() => _numberscreenState();
}

class _numberscreenState extends State<numberscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: SafeArea(
      child: Column(

        children: [

         Row(children: [ Padding(
           padding: const EdgeInsets.only(top:20.0,left: 20),
           child: InkWell(

             child: Icon(Icons.arrow_back_ios),

             onTap: (){

               Navigator.of(context).pop();
             },
           ),
         ),],),
          Row(children: [Padding(
            padding: const EdgeInsets.only(top: 42,left: 24),
            child: Container(
              child:Text('Enter your mobile number',style:TextStyle(fontSize: 23),

              ),
            ),
          ),],),
           Padding(
             padding: const EdgeInsets.only(left: 25),
             child: Row(
              children: [
                Container(
                  child: Image.asset(
                    "assets/images/flag.png",
                    width: 30,
                    height: 30,
                  ),
                  padding: EdgeInsets.only(right: 20),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Text(
                    "+92 ",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                SizedBox(
                  width: 200.w,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                      decoration:
                      InputDecoration(border: InputBorder.none),
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),

              ],
          ),
           ),
          SizedBox(height: 150.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              Container(
                width:67.w,
                height: 67.h,

               child: CircleAvatar(

                  backgroundColor: Color(0xfff53B175),
                  radius: 50,
                  child:  InkWell(
                    child: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,),
                    onTap: (){
                      Get.to(() => VerificationScreen());
                    },
                  ),
                ),
              ),
              SizedBox(width: 30.w,)
              ],)

          ],),
    ),
    );

  }
}
