import 'package:flutter/material.dart';
import 'package:gn/views/playgame.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Wrongpage extends StatefulWidget {

  @override
  _WrongpageState createState() => _WrongpageState();
}

class _WrongpageState extends State<Wrongpage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF070121),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 80.h,
            ),
            SizedBox(
              child: Container(
                alignment: Alignment.center,
                decoration:  BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color:  const Color(0xFF4F2FF8).withAlpha(40),
                      blurRadius: 100,
                      offset:  const Offset(0, 1),
                    )
                  ]
                ),
                child:  Image(image: AssetImage('images/fatal-error.png'),width: 320.0.w,height: 320.0.h,),
              ),
            ),
            SizedBox(
              height: 30.0.h,
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin:  EdgeInsets.only(right: 30.0.w),
                child:  Text("sorry !!",style:  TextStyle(color: Colors.white,fontSize:30.0.sp),),
              ),
            ),
            SizedBox(
              width: 330.0.w,
              child: Container(
                margin: EdgeInsets.only(bottom: 10.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0.r),
                    color: const Color(0xFF4F2FF8),
                    boxShadow: const[
                      BoxShadow(
                        color:  Color(0xFF4F2FF8),
                        blurRadius: 7.0,
                        offset:  Offset(0, 1),
                      )
                    ]
                ),
                child: TextButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute (builder: (context) {
                    return const Starttogame();
                  }));
                },style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 15.0.h)
                ),
                    child: Text("Game over",style: TextStyle(color: Colors.white,letterSpacing: 2,fontSize: 20.0.sp,fontWeight: FontWeight.bold),)),
              ),
              ),
          ],
        ),
      ),
    );
  }
}
