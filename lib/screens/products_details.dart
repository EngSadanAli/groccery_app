import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'TextDetailsofProduct/text_details.dart';
import 'numberscreen.dart';


class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  final String description =
      "Flutter is Google’s mobile UI framework for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source.";
  int _itemCount = 0;

  late final _ratingController;
  late double _rating;

  double _userRating = 3.0;
  int _ratingBarMode = 1;
  double _initialRating = 2.0;
  bool _isRTLMode = false;
  bool _isVertical = false;

  IconData? _selectedIcon;

  @override
  void initState() {
    super.initState();
    _ratingController = TextEditingController(text: '3.0');
    _rating = _initialRating;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
     child: Expanded(
        child: ListView(
          // padding: EdgeInsets.all(20),
            children: <Widget>[

      Column(

        children: [
          // Image over another image
          Container(
          height: 300.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                image: new AssetImage('assets/images/product.png'),

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
                  child: InkWell(

                    child: Icon(Icons.arrow_back_ios),

                    onTap: (){

                      Navigator.of(context).pop();
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30,right: 25),
                  child: InkWell(
                    child: Container(

                      child:Icon(Icons.logout_sharp,color: Colors.black,),
                    ),
                  ),
                ),
              ],),
              Padding(
                padding: const EdgeInsets.only(top: 20,right: 15),
                child: Container(
                  width: 329,
                  height: 199,
                  child: Image.asset('assets/images/bananah.png'),
                ),
              )
          ],)
        ),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:const [
                      Text('Organics Bananas',style: TextStyle(fontSize: 29,),),
                      Icon(Icons.favorite_border,color: Color(0xfff7C7C7C),size: 30,),

                    ],),
                ),


                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
//product counter increement and dicrement
                      Row(
                        children: <Widget>[
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
                        ],
                      ),
                      const Text('\$4.99',style: TextStyle(fontSize: 26,fontWeight: FontWeight.w600),)

                    ],),
                ),
                const Padding(
                  padding:  EdgeInsets.only(left: 25,right: 25),
                  child: Divider(
                    height: 10,
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 25,top: 10,bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:const [
                      Text('Product Detail',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                      // Icon(Icons.keyboard_arrow_down,color: Colors.black,size: 30,),

                    ],),
                ),
                Container(
                  child:  DescriptionTextWidget(text: description),
                ),
                const Padding(
                  padding:  EdgeInsets.only(left: 25,right: 25),
                  child: Divider(
                    height: 30,
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Nutritions',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                      Padding(
                        padding: const EdgeInsets.only(left: 130),
                        child: Container(
                          width: 33,
                          height: 18,
                          decoration: BoxDecoration(
                            color: Color(0xfffEBEBEB),
                            borderRadius: BorderRadius.circular(5),

                          ),
                          child:const Align(
                              alignment: Alignment.center,
                              child: Text('100gr',style: TextStyle(fontSize: 9,color:Color(0xfff7C7C7C)),)),
                        ),
                      ),
                      const   Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 30,),


                    ],),
                ),
                const Padding(
                  padding:  EdgeInsets.only(left: 25,right: 25),
                  child: Divider(
                    height: 30,
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 25,top: 10,bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Reviews',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          itemSize: 22,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Icon(Icons.star,color: Colors.amber),
                          onRatingUpdate: (rating) {

                          },
                        ),
                      ),
                      const   Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 30,),
                    ],),
                ),

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
                      "Add to Basket",
                      style: TextStyle(
                        color: Color(0xfffFCFCFC),fontSize: 16,
                      ),
                    )),
              ],
            ),
          ),

              ],
            ),
          ]),

        )
    ),
    );

  }

}



