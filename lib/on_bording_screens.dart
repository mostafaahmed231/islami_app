import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:islami_app/cach/cach_helper.dart';

import 'home/home.dart';

class OnBordingScreens extends StatelessWidget {
  const OnBordingScreens({super.key});

  static const String routName = "/";

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(

      finishButtonText: 'Register',

      finishButtonStyle: const FinishButtonStyle(
        backgroundColor: Color(0xFFE2BE7F) ,
      ),
      skipTextButton: const Text(

        'Skip',

        style: TextStyle(
          fontSize: 16,
          color:Color(0xFFE2BE7F) ,
          fontWeight: FontWeight.w600,
        ),

      ),
      onFinish: (){
        CacheHelper.saveEligibility();
        Navigator.pushNamed(context, HomeScreen.routName);
      },
      trailing: const Text(
        textAlign: TextAlign.center,
        'Islami',
        style: TextStyle(
          fontSize: 16,
          color: Color(0xFFE2BE7F),
          fontWeight: FontWeight.w600,
        ),
      ),


      controllerColor: const Color(0xFFE2BE7F),
      totalPage: 4,
      headerBackgroundColor: const Color(0xFF202020),
      pageBackgroundColor: Color(0xFF202020),

      background: [

        Container(

          padding: const EdgeInsets.only(top: 48),
          child: Column(
            children: [
              Image.asset(
                'assets/images/islami.png',
                height: 80,
                width: 160,
              ),
              Image.asset(
                'assets/images/q1.png',
                height: 350,
                width: 350,
              ),
            ],
          ),
        ),

        Column(
          children: [
            const SizedBox(height: 25,),
            Image.asset(
              'assets/images/islami.png',
              height: 80,
              width: 160,
            ),
            const SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.all(18),
              child: Image.asset(
                'assets/images/ts.png',
                height: 320,
                width: 320,
              ),
            ),
          ],
        ),
        Column(
          children: [
            const SizedBox(height: 25,),
            Image.asset(
              'assets/images/islami.png',
              height: 80,
              width: 160,
            ),
            const SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.all(18),
              child: Image.asset(
                'assets/images/mo.png',
                height: 320,
                width: 320,
              ),
            ),
          ],
        ),
        Column(
          children: [
            const SizedBox(height: 25,),
            Image.asset(
              'assets/images/islami.png',
              height: 80,
              width: 160,
            ),
            const SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.all(18),
              child: Image.asset(
                'assets/images/mac.png',
                height: 320,
                width: 320,
              ),
            ),
          ],
        ),
      ],
      speed: 5,
      pageBodies: [
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 480,
              ),
              Text(
                'Welcome To Islmi App',
                textAlign: TextAlign.center,
                style: TextStyle(

                  color: Color(0xFFE2BE7F),
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),

            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 460,
              ),
              Text(
                'Welcome To Islami.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFE2BE7F),
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'We Are Very Excited To Have You In Our Community',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFE2BE7F),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 480,
              ),
              Text(
                'Reading the Quran',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFE2BE7F),
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Text(
                'Read, and your Lord is the Most Generous',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFE2BE7F),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 480,
              ),
              Text(
                'Holy Quran Radio',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFE2BE7F),
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                'You can listen to the Holy Quran Radio through the application for free and easily',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFE2BE7F),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
