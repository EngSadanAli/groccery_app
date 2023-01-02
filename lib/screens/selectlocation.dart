import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:select_form_field/select_form_field.dart';

import 'loginpage.dart';

class selectLocation extends StatefulWidget {
  const selectLocation({Key? key}) : super(key: key);

  @override
  State<selectLocation> createState() => _selectLocationState();
}

class _selectLocationState extends State<selectLocation> {
  GlobalKey<FormState> _oFormKey = GlobalKey<FormState>();
  TextEditingController? _controller;
  //String _initialValue;
  String _valueChanged = '';
  String _valueToValidate = '';
  String _valueSaved = '';

  final List<Map<String, dynamic>> _items = [
    {
      'value': 'boxValue',
      'label': 'Box Label',
      'icon': Icon(Icons.stop),
    },
    {
      'value': 'circleValue',
      'label': 'Circle Label Loooooooooooooooooooong text',
      'icon': Icon(Icons.fiber_manual_record),
      'textStyle': TextStyle(color: Colors.red),
    },
    {
      'value': 'starValue',
      'label': 'Star Label',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

      Row(
          children: [
            Padding(
          padding: const EdgeInsets.only(top:20.0,left: 20),
          child: InkWell(
            child: Icon(Icons.arrow_back_ios),
            onTap: (){
              Navigator.of(context).pop();
              },
               ),
             ),
           ]
        ),
        SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.only(left:30),
              child: Container(
                width: 330.69.w,
                height:230.69.h,
                child:
                 Image.asset('assets/images/locations.png'),
              ),
              ),

          Padding(
            padding: const EdgeInsets.only(left:60,),
            child: Container(child:Text('Select Your Location',style:TextStyle(fontSize: 26,fontWeight: FontWeight.w600)),
            ),
          ),
          SizedBox(height: 10.h,),
          Padding(
          padding: const EdgeInsets.only(left: 44,right: 44),
          child: Container(
            child:Text("Swithch on your location to stay in tune with what’s happening in your area",style:TextStyle(color:Color(0xfff7C7C7C),fontSize: 14)),
          ),

          ),
              SizedBox(height: 128.h,),
              Padding(
                padding: const EdgeInsets.only(left: 26),
                child: Container(
                    child:Text('Your Zone',style:TextStyle(color:Color(0xfff7C7C7C),fontSize: 16))),

              ),
    Padding(
      padding: const EdgeInsets.only(left: 35,right: 44),
      child: Container(
       child: SelectFormField(
          type: SelectFormFieldType.dropdown, // or can be dialog
          initialValue: 'circle',
          // icon: Icon(Icons.format_shapes),
          // labelText: 'Shape',
          hintText: 'Banasree',cursorColor: Colors.black,
          items: _items,
          onChanged: (val) => print(val),
          onSaved: (val) => print(val),
        ),
      ),
    ),
              SizedBox(height: 25.h,),
              Padding(
                padding: const EdgeInsets.only(left: 26),
                child: Container(
                    child:Text('Your Area',style:TextStyle(color:Color(0xfff7C7C7C),fontSize: 16))),

              ),
              Padding(
                padding: const EdgeInsets.only(left: 35,right: 44),
                child: Container(
                  child: SelectFormField(
                    type: SelectFormFieldType.dropdown, // or can be dialog
                    initialValue: 'circle',
                    // icon: Icon(Icons.format_shapes),
                    // labelText: 'Shape',
                    hintText: 'Types of your area',cursorColor: Colors.black,
                    items: _items,
                    onChanged: (val) => print(val),
                    onSaved: (val) => print(val),
                  ),
                ),
              ),
              SizedBox(height: 35.h,),
              Container(
                margin: EdgeInsets.only(left: 25.w, right: 25.w),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xff53B175),
                  borderRadius: BorderRadius.circular(15),
                ),

                child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    // SvgPicture.asset("assets/images/facebook.svg"),



                    TextButton(
                        onPressed: () {
                          Get.to(() => LoginPage());
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

            ],),
        ));
  }
}
