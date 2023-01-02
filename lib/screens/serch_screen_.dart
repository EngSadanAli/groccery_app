import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groccery_app/screens/beverages_screen.dart';
import 'package:groccery_app/screens/filter_screen.dart';
import 'package:groccery_app/screens/homescreen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 25,top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 9,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Egg',hintStyle: TextStyle(color: Colors.black),
                        fillColor: Color(0xffF2F3F2),
                        filled: true,

                      ),
                    ),
                  ),

                  Expanded(
                   child: GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const FilterScreen()),
                        ),
                      child: Image.asset('assets/images/icon.png'))
                  ), ],),
            ),

            Expanded(

              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16,top: 14),
                    child: Row(
                      children: [
                    Padding(
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
                          child: Image.asset('assets/images/whiteegg.png',width: 99.89.w,height: 79.43.h,),
                        ),
                        SizedBox(height: 25.h,),
                        Text('Egg White',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                        SizedBox(height: 5,),
                        Text('7'),
                        SizedBox(height: 21.h,),
                        Row(children: [
                          Text("33",style:TextStyle(fontSize: 18,)),
                          SizedBox(width: 40.w,),
                          Container(
                            width: 45.67.w,
                            height: 45.67.h,
                            decoration: BoxDecoration(
                              color: Color(0xfff53B175),
                              borderRadius: BorderRadius.circular(17),
                            ),
                            child: InkWell(child: Icon(Icons.add,color: Colors.white,),
                                onTap: (){

                          Navigator.of(context).pop();
                          },
                            ),
                          )
                        ],)
                      ],),
                  )
              ),
            ),
                        Padding(
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
                                      child: Image.asset('assets/images/redegg.png',width: 99.89.w,height: 79.43.h,),
                                    ),
                                    SizedBox(height: 25.h,),
                                    Text('Egg Red',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                                    SizedBox(height: 5,),
                                    Text('7'),
                                    SizedBox(height: 21.h,),
                                    Row(children: [
                                      Text("33",style:TextStyle(fontSize: 18,)),
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
                        )

                      ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16,top: 14),
                    child: Row(
                      children: [
                        Padding(
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
                                      child: Image.asset('assets/images/p1.png',width: 99.89.w,height: 79.43.h,),
                                    ),
                                    SizedBox(height: 25.h,),
                                    Text('Organic Banana',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                                    SizedBox(height: 5,),
                                    Text('7'),
                                    SizedBox(height: 21.h,),
                                    Row(children: [
                                      Text("33",style:TextStyle(fontSize: 18,)),
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
                        ),
                        Padding(
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
                                      child: Image.asset('assets/images/p2.png',width: 99.89.w,height: 79.43.h,),
                                    ),
                                    SizedBox(height: 25.h,),
                                    Text('Organic Banana',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                                    SizedBox(height: 5,),
                                    Text('7'),
                                    SizedBox(height: 21.h,),
                                    Row(children: [
                                      Text("33",style:TextStyle(fontSize: 18,)),
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
                        )

                      ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16,top: 14),
                    child: Row(
                      children: [
                        Padding(
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
                                      child: Image.asset('assets/images/b1.png',width: 99.89.w,height: 79.43.h,),
                                    ),
                                    SizedBox(height: 25.h,),
                                    Text('Organic Banana',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                                    SizedBox(height: 5,),
                                    Text('7'),
                                    SizedBox(height: 21.h,),
                                    Row(children: [
                                      Text("33",style:TextStyle(fontSize: 18,)),
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
                        ),
                        Padding(
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
                                      child: Image.asset('assets/images/b1.png',width: 99.89.w,height: 79.43.h,),
                                    ),
                                    SizedBox(height: 25.h,),
                                    Text('Organic Banana',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                                    SizedBox(height: 5,),
                                    Text('7'),
                                    SizedBox(height: 21.h,),
                                    Row(children: [
                                      Text("33",style:TextStyle(fontSize: 18,)),
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
                        )

                      ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16,top: 14),
                    child: Row(
                      children: [
                        Padding(
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
                                      child: Image.asset('assets/images/b1.png',width: 99.89.w,height: 79.43.h,),
                                    ),
                                    SizedBox(height: 25.h,),
                                    Text('Organic Banana',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                                    SizedBox(height: 5,),
                                    Text('7'),
                                    SizedBox(height: 21.h,),
                                    Row(children: [
                                      Text("33",style:TextStyle(fontSize: 18,)),
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
                        ),
                        Padding(
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
                                      child: Image.asset('assets/images/b1.png',width: 99.89.w,height: 79.43.h,),
                                    ),
                                    SizedBox(height: 25.h,),
                                    Text('Organic Banana',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                                    SizedBox(height: 5,),
                                    Text('7'),
                                    SizedBox(height: 21.h,),
                                    Row(children: [
                                      Text("33",style:TextStyle(fontSize: 18,)),
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
                        )

                      ],),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
