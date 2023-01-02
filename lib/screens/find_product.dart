import 'package:flutter/material.dart';
import 'package:groccery_app/Controller/find_product_controller.dart';
import 'package:groccery_app/screens/beverages_screen.dart';

class FindProduct extends StatefulWidget {
  const FindProduct({Key? key}) : super(key: key);

  @override
  State<FindProduct> createState() => _FindProductState();
}

class _FindProductState extends State<FindProduct> {

  final _findProductController = FindProductController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
           const Padding(
              padding:  EdgeInsets.only(left: 10,top: 30),
              child: Text('Find Products',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
             Padding(
              padding: EdgeInsets.only(left: 25,right: 25,top: 25,bottom: 10),
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
                  hintText: 'Search Stores',
                  fillColor: Color(0xffF2F3F2),
                  filled: true,
                ),
              ),
            ),
     Expanded(
       child: ListView(
         children: [
           Padding(
             padding: const EdgeInsets.only(left: 25,top: 14),
             child: Row(
               children: [
                 GestureDetector(
                   onTap: () => Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => const BaveragesScreen()),
                   ),
                   child:   Container(
                     width: 144,
                     height: 189,
                     decoration: BoxDecoration(
                       color: Color(0xFFE8F5E9),
                       borderRadius: BorderRadius.circular(18),
                     ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Image.asset('assets/images/item1.png',height: 74,width: 111,),
                         SizedBox(height: 27,),
                         Padding(
                           padding: const EdgeInsets.only(left: 12),
                           child: Text('Frash Fruits & Vegetable' ,style: TextStyle(fontSize: 16),),
                         ),
                       ],),
                   ),
                 ),
                 SizedBox(width: 25,),
                 GestureDetector(
                   onTap: () => Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => const BaveragesScreen()),
                   ),
                   child:   Container(
                     width: 144,
                     height: 189,
                     decoration: BoxDecoration(
                       color: Color(0xFFFBE9E7),
                       borderRadius: BorderRadius.circular(18),
                     ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Image.asset('assets/images/tone.png',height: 74,width: 111,),
                         SizedBox(height: 27,),
                         Text('Cooking Oil \n & Ghee' ,style: TextStyle(fontSize: 16),),
                       ],),
                   ),
                 ),


               ],),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 25,top: 14),
             child: Row(
               children: [
                 GestureDetector(
                   onTap: () => Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => const BaveragesScreen()),
                   ),
                   child:   Container(
                     width: 144,
                     height: 189,
                     decoration: BoxDecoration(
                       color: Color(0xFFFCE4EC),
                       borderRadius: BorderRadius.circular(18),
                     ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Image.asset('assets/images/ttwo.png',height: 74,width: 111,),
                         SizedBox(height: 27,),
                         Text('Dairy & Eggs' ,style: TextStyle(fontSize: 16),),
                       ],),
                   ),
                 ),
                 SizedBox(width: 25,),
                 GestureDetector(
                   onTap: () => Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => const BaveragesScreen()),
                   ),
                   child:   Container(
                     width: 144,
                     height: 189,
                     decoration: BoxDecoration(
                       color: Color(0xFFF9FBE7),
                       borderRadius: BorderRadius.circular(18),
                     ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Image.asset('assets/images/tthree.png',height: 74,width: 111,),
                         SizedBox(height: 27,),
                         Text('Bakery & Snacks' ,style: TextStyle(fontSize: 16),),
                       ],),
                   ),
                 ),


               ],),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 25,top: 14),
             child: Row(
               children: [
                 GestureDetector(
                   onTap: () => Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => const BaveragesScreen()),
                   ),
                   child:   Container(
                     width: 144,
                     height: 189,
                     decoration: BoxDecoration(
                       color: Color(0xFFE0F2F1),
                       borderRadius: BorderRadius.circular(18),
                     ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Image.asset('assets/images/tfour.png',height: 74,width: 111,),
                         SizedBox(height: 27,),
                         Text('Meat & Fish' ,style: TextStyle(fontSize: 16),),
                       ],),
                   ),
                 ),
                 SizedBox(width: 25,),
                 GestureDetector(
                   onTap: () => Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => const BaveragesScreen()),
                   ),
                   child:   Container(
                     width: 144,
                     height: 189,
                     decoration: BoxDecoration(
                       color: Color(0xFFECEFF1),
                       borderRadius: BorderRadius.circular(18),
                     ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Image.asset('assets/images/item1.png',height: 74,width: 111,),
                         SizedBox(height: 27,),
                         Text('Banaa' ,style: TextStyle(fontSize: 16),),
                       ],),
                   ),
                 ),


               ],),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 25,top: 14),
             child: Row(
               children: [
                 GestureDetector(
                   onTap: () => Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => const BaveragesScreen()),
                   ),
                   child:   Container(
                     width: 144,
                     height: 189,
                     decoration: BoxDecoration(
                       color: Color(0xFFE8F5E9),
                       borderRadius: BorderRadius.circular(18),
                     ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Image.asset('assets/images/item1.png',height: 74,width: 111,),
                         SizedBox(height: 27,),
                         Text('Banaa' ,style: TextStyle(fontSize: 16),),
                       ],),
                   ),
                 ),
                 SizedBox(width: 25,),
                 GestureDetector(
                   onTap: () => Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => const BaveragesScreen()),
                   ),
                   child:   Container(
                     width: 144,
                     height: 189,
                     decoration: BoxDecoration(
                       color: Color(0xFFE8F5E9),
                       borderRadius: BorderRadius.circular(18),
                     ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Image.asset('assets/images/item1.png',height: 74,width: 111,),
                         SizedBox(height: 27,),
                         Text('Banaa' ,style: TextStyle(fontSize: 16),),
                       ],),
                   ),
                 ),


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
