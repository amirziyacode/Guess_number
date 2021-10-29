import 'package:flutter/material.dart';
import 'package:gn/animation/animation.dart';
import 'package:gn/views/playgame.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,DeviceOrientation.portraitDown]);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFF070121),
      body: SafeArea(
        child: Column(  
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration:  BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF4F2FF8).withAlpha(40),
                    blurRadius: 100,
                    offset: const Offset(170, 0),
                  )
                ]
              ),
              child: AnimationImage(Imagefullname:'images/playing-hand.png',width: 340,height: 340),
            ),

            Container(
              margin: const EdgeInsets.only(bottom: 10.0,left: 20.0),
              child:Row(
                children: <Widget>[
                  Text("Guses",style: TextStyle(color: const Color(0xFF4F2FF8),fontSize: 40.0.sp,fontWeight: FontWeight.bold,letterSpacing: 2.sp)),
                   SizedBox(
                    width: 5.0.w,
                  ),
                ],
              ),
            ),
            Container(
              margin:EdgeInsets.only(right:160.0.w,bottom: 60.0.h),
              child:Text("Number",style: TextStyle(color: Colors.white,fontSize: 40.0.sp,fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 35.0.h,
            ),
            SizedBox(
              width: 335.w,
              child: TextButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute (builder: (context){
                    return const Starttogame();
                  }));
                },
                style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFF4F2FF8),elevation: 14.0,padding: EdgeInsets.symmetric(vertical: 20.h),shadowColor:const Color(
                    0xFF3E30FF),shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0.r),
                ) ),
                child: Text("START TO PLAY",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: 2.sp,fontSize: 15.0.sp)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
