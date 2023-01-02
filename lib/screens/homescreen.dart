import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groccery_app/Controller/homescreen_controller.dart';
import 'package:groccery_app/screens/favorutie_screen.dart';
import 'package:groccery_app/screens/my_cart.dart';
import 'package:groccery_app/screens/products_details.dart';
import 'package:groccery_app/screens/profile_screen.dart';
import 'package:groccery_app/screens/serch_screen_.dart';

import '../Model/details_model.dart';
import 'card.dart';
import 'find_product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  List<String> title= [
    "Exclusive Offer",
    "Best Selling",

  ];
//controller data
  final _homeScreenController = HomeScreenController();


// for botom navigation bar
  int _selectedTab = 0;

  List _pages = [
    Center(
      child: Text("Home"),
    ),
    Center(
      child: Text("About"),
    ),
    Center(
      child: Text("Products"),
    ),
    Center(
      child: Text("Contact"),
    ),
    Center(
      child: Text("Settings"),
    ),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(

          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50,top: 40),
              child: Container(
                  width:60,
                  height: 40,
                  child:Image.asset('assets/images/karela.png',)),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                 Icon(Icons.location_on,color: Colors.black,),


                SizedBox(width: 4),
                Text('Dhaka, Banassre',style: TextStyle(fontSize: 18,color: Color(0xfff4C4F4D)),),
              ],),
            SizedBox(height: 30.h,),
            const Padding(
              padding: EdgeInsets.only(left: 25,right: 25),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                  hintText: 'Search Here',
                ),
              ),
            ),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  const FindProduct()),
              ),
              child: Padding(

                padding: const EdgeInsets.only(left: 25,right: 25),
                child: Image.asset('assets/images/banner.png'),
              ),
            ),

            SizedBox(height: 20,),
            // Vertical ListView Builder
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: title.length,
                  itemBuilder: (context,index){
                    return Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:  [
                                Text(title[index],style: TextStyle(fontSize: 24,color:Color(0xfff181725)),),
                                Text('See all',style:TextStyle(decoration: TextDecoration.underline,fontSize: 16,color:Color(0xfff53B175),))
                              ],),
                          ),
                          InkWell(
                          child: GestureDetector(
                          onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ProductDetails()),
                          ),

                            child: Container(
                              height: 248,
                              padding: EdgeInsets.symmetric(horizontal: 4),
                              //Horizontal List View Builder
                              child: ListView.builder(
                                  itemCount: _homeScreenController.modelData.length,
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
                                              child: Image.asset(_homeScreenController.modelData[index].image.toString(),width: 99.89.w,height: 79.43.h,),

                                            ),
                                            SizedBox(height: 25.h,),
                                            Text(_homeScreenController.modelData[index].name.toString(),style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                                            SizedBox(height: 5,),
                                            Text(_homeScreenController.modelData[index].piece.toString()),
                                            SizedBox(height: 21.h,),
                                            Row(children: [
                                              Text(_homeScreenController.modelData[index].price.toString(),style:TextStyle(fontSize: 18,)),
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
                      ),
                    );
                    // return Cards();
                  }),
            ),

          ],),
      ),
    ),
      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Color(0xfff53B175),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Shop"),
          BottomNavigationBarItem(
              icon: InkWell(child: Icon(Icons.search),
                onTap: (){

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SearchScreen()),
                  );
                },
              ), label: "Explore"),
          BottomNavigationBarItem(
              icon: InkWell(child: Icon(Icons.shopping_cart_outlined),
                onTap: (){

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyCart()),
                  );
                },
              ), label: "Cart"),
          BottomNavigationBarItem(
              icon: InkWell(
                  onTap: (){

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Favorurite()),
                    );
                  },
                  child: Icon(Icons.favorite_border)), label: "Favorite"),  BottomNavigationBarItem(
              icon: InkWell(
                  onTap: (){

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ProfileScreen()),
                    );
                  },
                  child: Icon(Icons.person_outline)), label: "Favorite"),



        ],
      ),
    );
  }
}
