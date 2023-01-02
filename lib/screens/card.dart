import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Cards extends StatefulWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          width: 173.32.w,
          height: 248.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border: Border.all(
              color: Color(0xfff7C7C7C),
              width: 1.0,
              style: BorderStyle.solid,
            ),
          ),

          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:20,left: 15),
                  child: Image.asset('assets/images/banana.png',width: 99.89.w,height: 79.43.h,),

                ),
                SizedBox(height: 25.h,),
                Text('Organic Banana ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                SizedBox(height: 5,),
                Text("7pcs' Priceg "),
                SizedBox(height: 21.h,),
                Row(children: [
                  Text('\$4.99',style:TextStyle(fontSize: 18,)),
                  SizedBox(width: 40.w,),
                  Container(
                    width: 45.67.w,
                    height: 45.67.h,
                    decoration: BoxDecoration(
                      color: Color(0xfff53B175),
                      borderRadius: BorderRadius.circular(17),
                    ),

                    child: Icon(Icons.add,color: Colors.white,),
                  )
                ],)

              ],),
          )

      ),
    );
  }
}
