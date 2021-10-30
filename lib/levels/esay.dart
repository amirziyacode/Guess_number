import 'dart:math';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gn/information/success.dart';
import 'package:gn/information/wrong.dart';





class Esplay extends StatefulWidget {
  @override
  _EsplayState createState() => _EsplayState();
}

class _EsplayState extends State<Esplay> {
  String text = '';
  String finalResult = '';
  int score = 240;
  int  numberrandom = Random().nextInt(9);
  // buttons
  Widget buttons(
      String btnText,
      Color color,
      // double height,
      double width,
      // double mtop,
      double mbottom,
      double mleft,
      double mright,
      double fontSize) {
    return SizedBox(
      width: width.w,
      child: Container(
          // height: height.r,
          margin: EdgeInsets.only(
              left: mleft.w,right: mright.w, bottom: mbottom.h),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0.r),
              boxShadow: const [
                BoxShadow(
                  color: Color(0xFF4F2FF8),
                  blurRadius: 8.0,
                  offset: Offset(0, 1),
                )
              ],
              color: color),
          child: TextButton(
            onPressed: () {
              numberprinter(btnText);
            },
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 15.h)
            ),
            child: Text(
              btnText,
              style: TextStyle(fontSize: fontSize.sp, color: Colors.white),
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181920),
      appBar: AppBar(
        backgroundColor: const Color(0xFF181920),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "between 1 & 9 ",
          style: TextStyle(
              color: Colors.white,
              fontSize: 18.0.sp,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: SizedBox(
                height: 65.0.h,
              ),
            ),
            SizedBox(
              width: 185,
              child: Container(
                alignment: Alignment.center,
                height: 185.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    color: const Color(0xFF4F2FF8).withAlpha(20),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF4F2FF8).withOpacity(0.2),
                        blurRadius: 50.0,
                        offset: const Offset(0, 1),
                      )
                    ]),
                child: Text(
                  text,
                  style:  TextStyle(color: Colors.white, fontSize: 35.0.sp),
                ),
              ),
            ),
            SizedBox(
              height: 60 .h,
            ),
              Column(
                children: [
                  Row(
                  children: <Widget>[
                    buttons('1', const Color(0xFF181920), 90.0,0.0, 30.0, 0.0, 25.0),
                    SizedBox(
                      width: 1.0.w,
                    ),
                    buttons('2', const Color(0xFF181920), 80.0,0.0, 20.0, 0.0,  25.0),
                    buttons('3', const Color(0xFF181920), 80.0,0.0, 20.0, 0.0, 25.0),
                    buttons('C', const Color(0xFF181920), 80.0,0.0, 20.0, 0.0, 25.0),
                  ],
            ),
                ],
              ),
            SizedBox(
              height: 10.0.h,
            ),
            Row(
              children: <Widget>[
                buttons('4', const Color(0xFF181920), 90.0, 0.0, 30.0, 0.0,25.0),
                buttons('5', const Color(0xFF181920), 80.0,0.0, 20.0, 0.0,25.0),
                buttons('6', const Color(0xFF181920), 80.0,0.0, 20.0, 0.0,25.0),
                SizedBox(
                  width: 85.0.w,
                  child: Container(
                    margin: EdgeInsets.only(top: 5.h,left: 23.0.w),
                    alignment: Alignment.center,
                    height: 55.0.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0.r),
                        color: const Color(0xFF3119AC),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF4F2FF8),
                            blurRadius: 8.0.r,
                            offset: const Offset(0, 1),
                          )
                        ]
                    ),
                    child: Text("score",style: TextStyle(color: Colors.white,fontSize: 20.0.sp,fontWeight: FontWeight.bold),),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.0.h,
            ),
            Row(
              children: <Widget>[
                buttons('7', const Color(0xFF181920), 90.0,15.0, 30.0, 0.0,25.0),
                buttons('8', const Color(0xFF181920), 80.0,15.0, 20.0, 0.0,25.0),
                buttons('9', const Color(0xFF181920), 80.0, 15.0, 20.0, 0.0,25.0),
                SizedBox(
                  width: 85.0.w,
                  child: Container(
                    alignment: Alignment.center,
                    height: 55.0.h,
                    margin: EdgeInsets.only(bottom: 10.h,left: 23.0.w),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0.r),
                        color: const Color(0xFF3119AC),
                        boxShadow: const[
                          BoxShadow(
                            color: Color(0xFF4F2FF8),
                            blurRadius: 8.0,
                            offset: Offset(0, 1),
                          )
                        ]
                    ),
                    child: Text("$score",style:  TextStyle(color: Colors.white,fontSize: 25.0.sp),),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                buttons('0', const Color(0xFF181920), 90.0,10.0, 30.0, 0.0,25.0),
                SizedBox(
                  width: 245.w,
                  child: Container(
                    margin: EdgeInsets.only(left: 20.w,bottom: 10.0.h)  ,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0.r),
                        color: const Color(0xFF181920),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xFF4F2FF8),
                            blurRadius: 8.0,
                            offset: Offset(0, 1),
                          )
                        ]),
                    child: TextButton(
                        onPressed: () {
                          random();
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 11.h)
                        ),
                        child:  Text(
                          "Check",
                          style:
                          TextStyle(color: Colors.white, fontSize: 25.0.sp),
                        )),
                  ),
                ),
              ],
            ),
        ]),
      )
    );
  }

  //random  backend code

  void numberprinter(btnText ){
    if (btnText == 'C') {
      text = '';
      finalResult = '';
    }else{
      finalResult = btnText;
    }
    setState(() {
      text = finalResult;
    });
  }

  Future  random ()async{
    if(finalResult != null){
      score -=20;
      if (score == 0){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
          return Wrongpage();
        }));
      }
      else if (int.parse(finalResult) == numberrandom) {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
          return Successpage(score: score,);
        }));
      }
      else if(int.parse(finalResult) >= numberrandom){
        text = 'Smaller';


      }
      else if(int.parse(finalResult) <= numberrandom){
        text = 'Bigger';
      }

    }
    else {
      Navigator.of(context).push(MaterialPageRoute (builder: (context) {
        return Wrongpage();
      }));
    }


    setState(() {
    });
  }
}
