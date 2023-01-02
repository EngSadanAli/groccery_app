import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groccery_app/Controller/beverages_controller.dart';
import 'package:groccery_app/Model/beverages_model.dart';
import 'package:groccery_app/screens/find_product.dart';
import 'package:groccery_app/screens/homescreen.dart';

class BaveragesScreen extends StatefulWidget {
  const BaveragesScreen({Key? key}) : super(key: key);

  @override
  State<BaveragesScreen> createState() => _BaveragesScreenState();
}

class _BaveragesScreenState extends State<BaveragesScreen> {

  final _beverageController = BeverageController();

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
                  InkWell(
                    child:const Icon(Icons.arrow_back_ios),
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                  ),

              const  Text('Beverages',style: TextStyle(fontSize: 18,color:Color(0xff181725)),),
                  Image.asset('assets/images/icon.png')
                ],),
            ),
            SizedBox(height: 16,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: 10,
                    itemBuilder: (context,index){
                      return Column(
                        children: [
                          InkWell(
                            child: GestureDetector(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => HomeScreen()),
                              ),

                              child: Container(
                                height: 248,
                                padding: EdgeInsets.symmetric(horizontal: 4),
                                //Horizontal List View Builder
                                child: ListView.builder(
                                    itemCount: _beverageController.modelData.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (ctx, index){
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
                                                    child: Image.asset(_beverageController.modelData[index].image.toString(),width: 99.89.w,height: 79.43.h,),
                                                  ),
                                                  SizedBox(height: 25.h,),
                                                  Text(_beverageController.modelData[index].name.toString(),style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                                                  SizedBox(height: 5,),
                                                  Text(_beverageController.modelData[index].piece.toString()),
                                                  SizedBox(height: 21.h,),
                                                  Row(children: [
                                                    Text(_beverageController.modelData[index].price.toString(),style:TextStyle(fontSize: 18,)),
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
                                    }),
                              ),
                            ),
                          ),
                        ],
                      );
                      // return Cards();
                    }),
              ),
            ),
          ],
        ),
      )
    );
  }
}
