import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:groccery_app/screens/order_accept.dart';
import 'package:groccery_app/screens/signin_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
            Container(
              height: 160,

              child:Padding(
                padding: const EdgeInsets.only(top: 36),
                child: Row(children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.center,

            children: [
            Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Image.asset('assets/images/profile.png'),
            )
      ],
      ),
                  Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           const SizedBox(width: 20,),
                           const Text('Syed Sadan Ali',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                           const SizedBox(width: 8,),
                           const Icon(Icons.edit,color: Color(0xfff53B175),),
                         ],),
                       Row(children: const [
                         Padding(
                           padding: EdgeInsets.only(left: 20),
                           child: Text('lifeincodes10101@gmai.com',style: TextStyle(color: Color(0xfff7C7C7C),fontSize: 16),),
                         ),
                       ],)
                     ],)
      ],),
              )
            ),

        const Divider(

          thickness: 1,
          // indent: 20,
          // endIndent: 0,
          color: Color(0xfffE2E2E2),
        ),

          ListTile(
            leading: const Icon(Icons.shopping_bag), title: const Text("Orders"),
            onTap: () {
              Navigator.pop(context);
            },
            trailing:  const Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            leading: const Icon(Icons.details), title: const Text("Details"),
            onTap: () {
              Navigator.pop(context);
            },
            trailing:  const Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            leading: const Icon(Icons.location_on), title: const Text("Deliivery Address"),
            onTap: () {
              Navigator.pop(context);
            },
            trailing:  const Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            leading: const Icon(Icons.payment), title: const Text("Payemnt Method"),
            onTap: () {
              Navigator.pop(context);
            },
            trailing:  const Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            leading: const Icon(Icons.bookmark_border_sharp), title: const Text("Promo Card"),
            onTap: () {
              Navigator.pop(context);
            },
            trailing:  const Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            leading: const Icon(Icons.notifications), title: const Text("Notifications"),
            onTap: () {
              Navigator.pop(context);
            },
            trailing:  const Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            leading: const Icon(Icons.help_outline_outlined), title: const Text("Help"),
            onTap: () {
              Navigator.pop(context);
            },
            trailing:  const Icon(Icons.arrow_forward_ios_outlined),
          ),  ListTile(
            leading: const Icon(Icons.help), title: const Text("About"),
            onTap: () {
              Navigator.pop(context);
            },
            trailing:  const Icon(Icons.arrow_forward_ios_outlined),
          ),

      SizedBox(height: 42,),
      GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  Sigin()),
        ),
        child: Container(
           
           width: 300,
           height: 50,
          decoration: BoxDecoration(
            color: Color(0xfffF2F3F2),
            borderRadius: BorderRadius.circular(19)
          ),
          child: Row
            (
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Icon(Icons.logout_sharp),
            ),
            Text(
              "Log Out",
              style: TextStyle(
                color: Colors.black,fontSize: 16,
              ),
            ),
            Text(''),
          ],),

         ))
        ],),
    );
  }
}
