import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:groccery_app/screens/numberscreen.dart';
import 'package:groccery_app/screens/order_accept.dart';




class Favorurite extends StatefulWidget {
  const Favorurite({Key? key}) : super(key: key);

  @override
  State<Favorurite> createState() => _FavoruriteState();
}

class _FavoruriteState extends State<Favorurite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(children: [
        Padding (
          padding:  EdgeInsets.only(  top: 40),
          child: Text('Favorurite',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
        ),
        SizedBox(
          height: 30,
        ),
        Divider(
          thickness: 1,
          // indent: 20,
          // endIndent: 0,
          color: Color(0xfffE2E2E2),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context,index){
                return ListTile(
                  leading: Image.asset('assets/images/b1.png'),
                  title: Text('Sprite Can'),
                  subtitle: Text('35ml,price'),
                  trailing: Text("75"),

                );
              }),
        ),
        Container(
          margin: EdgeInsets.only(left: 25.w, right: 25.w,bottom: 40),
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
                      _dialogBuilder(context);
                  },
                  child: Text(
                    "Add All To Cart",
                    style: TextStyle(
                      color: Color(0xfffFCFCFC),fontSize: 16,
                    ),
                  )),

    ],
          ),
        ),
      ],)
    );

  }
}



Future<void> _dialogBuilder(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(18))),
        // title: const Text('Basic dialog title'),
        content: Container(
          height: 600 .h,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 400),
                child: Icon(Icons.close),
              ),
              Image.asset('assets/images/dialog.png',height: 222,width: 221,),
              SizedBox(
                height: 49,
              ),
              Text('Oops! Order Failed',style: TextStyle(fontSize: 26),),
              SizedBox(
                height: 20,
              ),
              Text('Something went tembly wrong.',style: TextStyle(fontSize: 16,color:Color(0xfff7C7C7C)),),
              SizedBox(
                height: 50,
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xff53B175),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 50.w,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          "Please try agian",
                          style: TextStyle(
                            color: Color(0xfffFCFCFC),fontSize: 16,
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(height: 7,),
              TextButton(
                  onPressed: () {
                    Get.to(() => OrderAccept());
                  },
                  child: Text(
                    "Please try agian",
                    style: TextStyle(
                      color: Color(0xfff181725),fontSize: 14,
                    ),
                  )),
            ],
          ),
        ),
      );
    },
  );
}





