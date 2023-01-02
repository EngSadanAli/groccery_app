import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:groccery_app/screens/numberscreen.dart';
import 'package:groccery_app/screens/order_accept.dart';

class MyCart extends StatefulWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  int _itemCount = 0;
  int _itemCount1 = 0;
  int _itemCount2 = 0;
  int _itemCount3 = 0;
  int _itemCount4 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column
          (
          children: [
            Padding(
              padding: const EdgeInsets.only(  top: 40),
              child: Text('My Cart',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
            ),
         SizedBox(
           height: 30,
         ),
          const Divider(

            thickness: 1,
            // indent: 20,
            // endIndent: 0,
            color: Color(0xfffE2E2E2),
          ),
            Expanded(
              child: ListView(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(

                      width:330,
                      height:157,
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/banana.png',),
                            ],),

                          Column(

                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Text('Organic Banana',style: TextStyle(fontSize: 16),),
                              Padding(
                                padding: const EdgeInsets.only(right: 42),
                                child: Text('1kg, Pric',style: TextStyle(fontSize: 14,color:Color(0xfff7C7C7C)),),
                              ),
                              SizedBox(
                                height: 26,
                              ),

                              Container(
                                  height: 60,
                                  width: 150,

                                  child: Row(children: [
                                    _itemCount!=0? new  IconButton(icon: new Icon(Icons.remove,size: 35,color: Color(0xfffB3B3B3),),onPressed: ()=>setState(()=>_itemCount--),):new Container(),
                                    Container(
                                      width: 45.67,
                                      height: 45.67,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(17),
                                          color:Color(0xfffE2E2E2)
                                      ),
                                      child:Align(
                                          alignment: Alignment.center,
                                          child:  Text(_itemCount.toString(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),)),
                                    ),
                                    IconButton(icon:  Icon(Icons.add,size: 35,color: Color(0xfff53B175),),onPressed: ()=>setState(()=>_itemCount++))
                                  ],)
                              )
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(child: const Icon(Icons.cancel,color: Colors.black,),
                                onTap: (){

                                  Navigator.of(context).pop();
                                },
                              ),
                              const Text('\$4.99',style: TextStyle(fontSize: 18,),)
                            ],)
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(

                      width:330,
                      height:157,
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/redegg.png',width: 115,height: 115,),
                            ],),

                          Column(

                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Text('Egg Chicken Red',style: TextStyle(fontSize: 16),),
                              Padding(
                                padding: const EdgeInsets.only(right: 42),
                                child: Text('4kg, Pric',style: TextStyle(fontSize: 14,color:Color(0xfff7C7C7C)),),
                              ),
                              SizedBox(
                                height: 26,
                              ),
                              Container(
                                  height: 60,
                                  width: 150,

                                  child: Row(children: [
                                    _itemCount1!=0? new  IconButton(icon: new Icon(Icons.remove,size: 35,color: Color(0xfffB3B3B3),),onPressed: ()=>setState(()=>_itemCount1--),):new Container(),
                                    Container(
                                      width: 45.67,
                                      height: 45.67,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(17),
                                          color:Color(0xfffE2E2E2)
                                      ),
                                      child:Align(
                                          alignment: Alignment.center,
                                          child:  Text(_itemCount1.toString(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),)),
                                    ),
                                    IconButton(icon:  Icon(Icons.add,size: 35,color: Color(0xfff53B175),),onPressed: ()=>setState(()=>_itemCount1++))
                                  ],)
                              )
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(child: const Icon(Icons.cancel,color: Colors.black,),
                                onTap: (){

                                  Navigator.of(context).pop();
                                },
                              ),
                              const Text('\$733',style: TextStyle(fontSize: 18,),)
                            ],)
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(

                      width:330,
                      height:157,
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/p1.png',width: 104,height: 104,),
                            ],),

                          Column(

                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Text('Egg Pasta',style: TextStyle(fontSize: 16),),
                              Padding(
                                padding: const EdgeInsets.only(right: 42),
                                child: Text('1kg, Pric',style: TextStyle(fontSize: 14,color:Color(0xfff7C7C7C)),),
                              ),
                              SizedBox(
                                height: 26,
                              ),
                              Container(
                                  height: 60,
                                  width: 150,

                                  child: Row(children: [
                                    _itemCount2!=0? new  IconButton(icon: new Icon(Icons.remove,size: 35,color: Color(0xfffB3B3B3),),onPressed: ()=>setState(()=>_itemCount2--),):new Container(),
                                    Container(
                                      width: 45.67,
                                      height: 45.67,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(17),
                                          color:Color(0xfffE2E2E2)
                                      ),
                                      child:Align(
                                          alignment: Alignment.center,
                                          child:  Text(_itemCount2.toString(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),)),
                                    ),
                                    IconButton(icon:  Icon(Icons.add,size: 35,color: Color(0xfff53B175),),onPressed: ()=>setState(()=>_itemCount2++))
                                  ],)
                              )
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(child: const Icon(Icons.cancel,color: Colors.black,),
                                onTap: (){

                                  Navigator.of(context).pop();
                                },
                              ),
                              const Text('\$4.99',style: TextStyle(fontSize: 18,),)
                            ],)
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(

                      width:330,
                      height:157,
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/banana.png'),
                            ],),

                          Column(

                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Text('Organic Banana',style: TextStyle(fontSize: 16),),
                              Padding(
                                padding: const EdgeInsets.only(right: 42),
                                child: Text('1kg, Pric',style: TextStyle(fontSize: 14,color:Color(0xfff7C7C7C)),),
                              ),
                              SizedBox(
                                height: 26,
                              ),
                              Container(
                                  height: 60,
                                  width: 150,

                                  child: Row(children: [
                                    _itemCount3!=0? new  IconButton(icon: new Icon(Icons.remove,size: 35,color: Color(0xfffB3B3B3),),onPressed: ()=>setState(()=>_itemCount3--),):new Container(),
                                    Container(
                                      width: 45.67,
                                      height: 45.67,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(17),
                                          color:Color(0xfffE2E2E2)
                                      ),
                                      child:Align(
                                          alignment: Alignment.center,
                                          child:  Text(_itemCount3.toString(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),)),
                                    ),
                                    IconButton(icon:  Icon(Icons.add,size: 35,color: Color(0xfff53B175),),onPressed: ()=>setState(()=>_itemCount3++))
                                  ],)
                              )
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(child: const Icon(Icons.cancel,color: Colors.black,),
                                onTap: (){

                                  Navigator.of(context).pop();
                                },
                              ),
                              const Text('\$4.99',style: TextStyle(fontSize: 18,),)
                            ],)
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(

                      width:330,
                      height:157,
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/banana.png'),
                            ],),

                          Column(

                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Text('Organic Banana',style: TextStyle(fontSize: 16),),
                              Padding(
                                padding: const EdgeInsets.only(right: 42),
                                child: Text('1kg, Pric',style: TextStyle(fontSize: 14,color:Color(0xfff7C7C7C)),),
                              ),
                              SizedBox(
                                height: 26,
                              ),
                              Container(
                                  height: 60,
                                  width: 150,

                                  child: Row(children: [
                                    _itemCount4!=0? new  IconButton(icon: new Icon(Icons.remove,size: 35,color: Color(0xfffB3B3B3),),onPressed: ()=>setState(()=>_itemCount4--),):new Container(),
                                    Container(
                                      width: 45.67,
                                      height: 45.67,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(17),
                                          color:Color(0xfffE2E2E2)
                                      ),
                                      child:Align(
                                          alignment: Alignment.center,
                                          child:  Text(_itemCount4.toString(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),)),
                                    ),
                                    IconButton(icon:  Icon(Icons.add,size: 35,color: Color(0xfff53B175),),onPressed: ()=>setState(()=>_itemCount4++))
                                  ],)
                              )
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(child: const Icon(Icons.cancel,color: Colors.black,),
                                onTap: (){

                                  Navigator.of(context).pop();
                                },
                              ),
                              const Text('\$4.99',style: TextStyle(fontSize: 18,),)
                            ],)
                        ],
                      ),
                    )
                  ],
                ),
              ],),
            ),
            Container(
              margin: EdgeInsets.only(left: 25.w, right: 25.w,bottom: 50),
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
                        _settingModalBottomSheet(context);
                      },
                      child: Text(
                        "Go to CheckOut",
                        style: TextStyle(
                          color: Color(0xfffFCFCFC),fontSize: 16,
                        ),
                      )),
                ],
              ),
            ),
        ],),
      )
    );
  }
}


// bottom Sheet

void _settingModalBottomSheet(context){
  showModalBottomSheet(
      shape: const RoundedRectangleBorder( // <-- SEE HERE
      borderRadius: BorderRadius.vertical(
      top: Radius.circular(25.0),
  ),),
      context: context,

      builder: (BuildContext bc){
        return Column(
          children: [
        const ListTile(

        title: Text(
          'Check Out',
          textScaleFactor: 1.5,
        ),
        trailing: Icon(Icons.cancel),
        ),
            SizedBox(height: 14,),
            const Divider(

              thickness: 1,
              // indent: 20,
              // endIndent: 0,
              color: Color(0xfffE2E2E2),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 30,right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Delivery',style: TextStyle(fontSize: 18,color: Color(0xfff7C7C7C)),),
                  Padding(
                    padding:  EdgeInsets.only(left: 100),
                      child: Text('Select Method',style: TextStyle(fontSize: 16,),)
                  ),
                  const   Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 14,),


                ],),
            ),
            SizedBox(height: 14,),
            const Divider(

              thickness: 1,
              // indent: 20,
              // endIndent: 0,
              color: Color(0xfffE2E2E2),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Payment',style: TextStyle(fontSize: 18,color: Color(0xfff7C7C7C)),),

                  const   Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 14,),


                ],),
            ),
            SizedBox(height: 14,),
            const Divider(

              thickness: 1,
              // indent: 20,
              // endIndent: 0,
              color: Color(0xfffE2E2E2),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Promo Code',style: TextStyle(fontSize: 18,color: Color(0xfff7C7C7C)),),
                  Padding(
                      padding:  EdgeInsets.only(left: 80),
                      child: Text('Pick discount',style: TextStyle(fontSize: 16,),)
                  ),
                  const   Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 14,),


                ],),
            ),
            const Divider(

              thickness: 1,
              // indent: 20,
              // endIndent: 0,
              color: Color(0xfffE2E2E2),
            ),
            SizedBox(height: 14,),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Total Cost',style: TextStyle(fontSize: 18,color: Color(0xfff7C7C7C)),),
                  Padding(
                      padding:  EdgeInsets.only(left: 100),
                      child: Text("13.97",style: TextStyle(fontSize: 16,),)
                  ),
                  const   Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 14,),


                ],),
            ),
            SizedBox(height: 14,),
            const Divider(
              height: 10,
              thickness: 1,
              // indent: 20,
              // endIndent: 0,
              color: Color(0xfffE2E2E2),
            ),
       SizedBox(
         height: 18,
       ),
       Text("By placing an order you agree to our "
           "\n Terms And Conditions"),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(left: 25.w, right: 25.w,bottom: 50),
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
          ],
        );
      }
  );
}
