import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gn/views/playgame.dart';


class Successpage extends StatefulWidget {
  Successpage({required this.score});
  int score;

  @override
  _SuccesspageState createState() => _SuccesspageState(score: score);
}

class _SuccesspageState extends State<Successpage> {
  _SuccesspageState({required this.score});
  int score;
  @override
  Widget build(BuildContext context) {
   String Score = score.toString();
    return Scaffold(
      backgroundColor: const Color(0xFF070121),
      body: SafeArea(
        child: Column(
          children:  <Widget>[
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
                // margin: const EdgeInsets.only(top: 150.0),
                  child: Image(image: AssetImage('images/concept-of-seo-ranking.png'),width: 340.0.w,height: 340.0.h)
              ),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                child: Container(
                  margin: const  EdgeInsets.only(right: 25.0),
                  child: Text("Score $Score",style: TextStyle(color: Colors.white,fontSize:30.0.sp),),
                ),
              ),
            ),
            SizedBox(
              width: 330.0.w,
              child: Container(
                margin: EdgeInsets.only(bottom: 10.0.h),
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
                child: Text("Successful !",style: TextStyle(color: Colors.white,letterSpacing: 2,fontSize: 20.0.sp,fontWeight: FontWeight.bold),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
