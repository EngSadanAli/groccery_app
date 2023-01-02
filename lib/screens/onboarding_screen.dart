import 'package:flutter/material.dart';
import 'package:groccery_app/screens/signin_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              constraints: BoxConstraints.expand(),
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/onboaringImage.png"),
                    fit: BoxFit.none),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 450.28,
                ),
                child: Column(

                  children: const [
                    Text(
                      'Welcome',
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'to our store',
                      style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Center(
                        child: Text(
                      'Ger your groceries in as fast as one hour',
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color(0xffFCFCFC),
                      ),
                    )),
                  ],
                ),
              )),
          Positioned(
            top: 600,
            left: 20,
            right: 13,
            child: GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  Sigin()),
              ),
              child: Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                  color: const Color(0xff53B175),
                  borderRadius: BorderRadius.circular(19),
                ),
                child: const Center(
                    child: Text(
                  'Get Start',
                  style: TextStyle(
                    color: const Color(0xffFCFCFC),
                    fontSize: 18,
                  ),
                )),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
