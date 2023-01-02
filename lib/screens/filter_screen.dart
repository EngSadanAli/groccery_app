import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:groccery_app/screens/numberscreen.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool _checkbox = false;
  bool _checkbox2 = false;
  bool _checkbox3 = false;
  bool _checkbox4 = false;
  bool _checkbox5 = false;
  bool _checkbox6 = false;
  bool _checkbox7 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left:24.0,top: 50,bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(child: const Icon(Icons.cancel,color: Colors.black,),
                  onTap: (){

                    Navigator.of(context).pop();
                  },
                ),
                const Text('Filters',style:TextStyle(fontSize: 20,)),
               const Text('              ')
              ],
            ),
          ),
          Container (
            height: 686,
            width: 400,
            decoration: const BoxDecoration(
              color: Color(0xFFECEFF1),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))

            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30,left: 30),
                  child: Text('Categoris',style: TextStyle(fontSize: 24),),
                ),

                  Padding(
                    padding: const EdgeInsets.only(top:10,left: 25),
                    child: Container(
                      child: Row(children: [
                        Checkbox(
                          value: _checkbox,
                          onChanged: (value) {
                            setState(() {
                              _checkbox = !_checkbox;
                            });
                          },
                        ),
                        Text('Chips and Crips',style: TextStyle(fontSize: 16),),
                      ],),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Container(
                    child: Row(children: [
                      Checkbox(
                        value: _checkbox2,
                        onChanged: (value) {
                          setState(() {
                            _checkbox2 = !_checkbox2;
                          });
                        },
                      ),
                      Text('Food Fast',style: TextStyle(fontSize: 16),),
                    ],),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Container(
                    child: Row(children: [
                      Checkbox(
                        value: _checkbox3,
                        onChanged: (value) {
                          setState(() {
                            _checkbox3 = !_checkbox3;
                          });
                        },
                      ),
                      Text('Nodeles & Pasta',style: TextStyle(fontSize: 16),),
                    ],),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30,left: 30),
                  child: Text('Brand',style: TextStyle(fontSize: 24),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Container(
                    child: Row(children: [
                      Checkbox(
                        value: _checkbox4,
                        onChanged: (value) {
                          setState(() {
                            _checkbox4 = !_checkbox4;
                          });
                        },
                      ),
                      Text('Individual Callection',style: TextStyle(fontSize: 16),),
                    ],),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Container(
                    child: Row(children: [
                      Checkbox(
                        value: _checkbox5,
                        onChanged: (value) {
                          setState(() {
                            _checkbox5 = !_checkbox5;
                          });
                        },
                      ),
                      Text('Cocola',style: TextStyle(fontSize: 16),),
                    ],),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Container(
                    child: Row(children: [
                      Checkbox(
                        value: _checkbox6,
                        onChanged: (value) {
                          setState(() {
                            _checkbox6 = !_checkbox6;
                          });
                        },
                      ),
                      Text('Ifad',style: TextStyle(fontSize: 16),),
                    ],),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Container(
                    child: Row(children: [
                      Checkbox(
                        value: _checkbox7,
                        onChanged: (value) {
                          setState(() {
                            _checkbox7= !_checkbox7;
                          });
                        },
                      ),
                      Text('Kazi Farmas',style: TextStyle(fontSize: 16),),
                    ],),
                  ),
                ),
                SizedBox(height: 120,),
                Container(
                  margin: EdgeInsets.only(left: 25.w, right: 25.w),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xff53B175),
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
                            "Apply Filter",
                            style: TextStyle(
                              color: Color(0xfffFCFCFC),fontSize: 16,
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
