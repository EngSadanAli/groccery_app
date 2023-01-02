import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'numberscreen.dart';



class Sigin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: SafeArea(
          child: Column(children: [
            Container(
                width: 413.37.w,
                height: 374.15.h,
                child: Image.asset(
                  "assets/images/login.png",
                  fit: BoxFit.cover,
                )),
            SizedBox(
              height: 40.18.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 28.53.w),
                  child: Text(
                    "Get your groceries\nwith convenio",style: TextStyle(fontSize: 26),),
                ),
              ],
            ),
            SizedBox(
              height: 40.61.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 24.97.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25.w, right: 25.w),
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(width: 1))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                ],
              ),
            ),
            SizedBox(height: 30.h,),
            Container(child: Text('Or connect with social media',
            style: TextStyle(color:Color(0xfff828282),fontSize: 14,
            )),),
            SizedBox(
              height: 30.55.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 25.w, right: 25.w),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xff4A66AC),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 45.w,
                  ),
                  // SvgPicture.asset("assets/images/facebook.svg"),


                  SizedBox(
                    width: 50.w,
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(() => numberscreen());
                      },
                      child: Text(
                        "Continue with Number",
                        style: TextStyle(
                          color: Color(0xfffFCFCFC),fontSize: 16,
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 37.83.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 25.w, right: 25.w),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xff5383EC),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 45.w,
                  ),
                  SvgPicture.asset("assets/images/google.svg"),
                  SizedBox(
                    width: 20.w,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Continue with Google",style: TextStyle(
                        color: Color(0xfffFCFCFC),fontSize: 16,
                      ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
          ]),
        ),
      ),
    );
  }
}