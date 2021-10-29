import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gn/views/home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // for responsive  to applications
      builder: () => MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color(0xFF070121)
      ),
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        // for splash screen in starter app with package ..
        splash: Center(
          child: Column(
            children: [
              Expanded(flex: 1,child: Image.asset("images/game.png")),
              SizedBox(
                height: 15.0.h,
              ),
              Text("Amz",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30.0.sp),)
            ],
          ),
        ),
        duration: 500,
        splashIconSize: 250.0.h,
        backgroundColor:const  Color(0xFF070121),
        nextScreen: const MyHomePage(),
        splashTransition: SplashTransition.decoratedBoxTransition,


      ),
      ),
      designSize: const Size(370,640), // size in your mobile app ..
    );
  }
}

