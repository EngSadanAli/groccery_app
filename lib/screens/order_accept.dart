import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:groccery_app/screens/homescreen.dart';

class OrderAccept extends StatefulWidget {
  const OrderAccept({Key? key}) : super(key: key);

  @override
  State<OrderAccept> createState() => _OrderAcceptState();
}

class _OrderAcceptState extends State<OrderAccept> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Column(children: [
          Container(
              height: 438,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                    image: AssetImage('assets/images/back1.png'),

                    fit: BoxFit.fitHeight,
                  )
              ),
              child:
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30,left: 25),
                       
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30,right: 25),
                      ),
                    ],),
                  Padding(
                    padding: const EdgeInsets.only(top: 70,  ),

                      child: Image.asset('assets/images/front1.png',height: 200,width: 220,),
                    ),
                  Padding(
                    padding: const EdgeInsets.only(left:30,top: 66),
                    child: Text('Your Order has been ',style: TextStyle(fontSize: 28),),

                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:30),
                    child: Text('accepted ',style: TextStyle(fontSize: 28),),
                  ),
                ],)
          ),
          Padding(
            padding: const EdgeInsets.only(left:30,top: 20),
            child: Text('Your items has been placcd and is on  ',style: TextStyle(fontSize: 16,color: Color(0xfff7C7C7C)),),

          ),Padding(
            padding: const EdgeInsets.only(left:30,),
            child: Text(' it’s way to being processed ',style: TextStyle(fontSize: 16,color: Color(0xfff7C7C7C)),),

          ),
          Container(

            margin: EdgeInsets.only(left: 25.w, right: 25.w,bottom: 10,top: 134),
            alignment: Alignment.center,
            decoration: BoxDecoration(

              color: Color(0xff53B175),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(

              children: [
                SizedBox(
                  width: 70.w,
                ),
                // SvgPicture.asset("assets/images/facebook.svg"),

                SizedBox(
                  width: 50.w,
                ),
                TextButton(
                    onPressed: () {
                      Get.to(() => OrderAccept());
                    },
                    child: Text(
                      "Place Order",
                      style: TextStyle(
                        color: Color(0xfffFCFCFC),fontSize: 16,
                      ),
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:10,),
            child: TextButton(
                onPressed: () {
                  Get.to(() => HomeScreen());
                },
                child: Text(
                  "Back to home",
                  style: TextStyle(
                    color: Colors.black,fontSize: 16,
                  ),
                )),

          ),
        ],),
      )
    );
  }
}
