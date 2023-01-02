import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:groccery_app/screens/selectlocation.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
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
                child:Text('Enter your 4-digit code',style:TextStyle(fontSize: 23),

                ),
              ),
            ),],),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [


                  SizedBox(
                    width: 200.w,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.done,
                        decoration:

                        InputDecoration(
                            label: Text('Code',style: TextStyle(fontSize: 16,),),

                            hintText: '-  -  -  -',
                            border: InputBorder.none),
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

                Container(child:Text('Resend Cosde',style: TextStyle(fontSize: 18,color:Color(0xfff53B175) ),)),
                SizedBox(width: 150.w,),
                Container(
                  width:67.w,
                  height: 67.h,

                  child: CircleAvatar(

                    backgroundColor: Color(0xfff53B175),
                    radius: 50,
                    child:  InkWell(
                      child: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,),
                      onTap: (){
                        Get.to(() => selectLocation());
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
