import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimationImage extends StatefulWidget {
  AnimationImage({required this.Imagefullname,required this.width, required this.height});
  String Imagefullname;
  int width;
  int height;

  @override
  _AnimationImageState createState() => _AnimationImageState(Imagefullname: Imagefullname,width: width,height: height);
}

class _AnimationImageState extends State<AnimationImage> with SingleTickerProviderStateMixin {
  _AnimationImageState({required this.Imagefullname,required this.width, required this.height});
  int width;
  int height;
  String Imagefullname;
  late final  AnimationController _controller = AnimationController(vsync: this,
  duration: const Duration(seconds: 3),

  )..repeat(reverse: true);
  late Animation<Offset> _animation = Tween(
    begin: Offset.zero,
    end: Offset(0,0.08),
  ).animate(_controller);

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Image(image: AssetImage(Imagefullname),width: width.w,height: height.h,),
    );
  }
}
