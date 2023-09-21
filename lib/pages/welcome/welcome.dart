import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(
            top: 34.h,
          ),
          width: 375.w,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              PageView(
                children: [
                  // PAGE VIEW 1
                  Column(
                    children: [
                      SizedBox(
                        width: 345.w,
                        height: 345.w,
                        child: const Text(
                          "Image one",
                        ),
                      ),
                      Container(
                        child: Text(
                          "First See Learning",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 24.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: 30.w,
                          right: 30.w,
                        ),
                        child: Text(
                          "Forge about a for of paper all knowledge in one learning",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 100.h,
                          left: 25.w,
                          right: 25.w,
                        ),
                        width: 325.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(15.w)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: Offset(0, -1),
                            )
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "Next",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // PAGE VIEW 2
                  Column(
                    children: [
                      SizedBox(
                        width: 345.w,
                        height: 345.w,
                        child: const Text(
                          "Image one",
                        ),
                      ),
                      Container(
                        child: Text(
                          "First See Learning",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 24.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: 30.w,
                          right: 30.w,
                        ),
                        child: Text(
                          "Forge about a for of paper all knowledge in one learning",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 100.h,
                          left: 25.w,
                          right: 25.w,
                        ),
                        width: 325.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(15.w)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: Offset(0, -1),
                            )
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "Next",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // PAGE VIEW 3
                  Column(
                    children: [
                      SizedBox(
                        width: 345.w,
                        height: 345.w,
                        child: const Text(
                          "Image one",
                        ),
                      ),
                      Container(
                        child: Text(
                          "First See Learning",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 24.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: 30.w,
                          right: 30.w,
                        ),
                        child: Text(
                          "Forge about a for of paper all knowledge in one learning",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 100.h,
                          left: 25.w,
                          right: 25.w,
                        ),
                        width: 325.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(15.w)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: Offset(0, -1),
                            )
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "Next",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Positioned(
                bottom: 100.h,
                child: DotsIndicator(
                  dotsCount: 3,
                  mainAxisAlignment: MainAxisAlignment.center,
                  decorator: DotsDecorator(
                    color: Colors.grey,
                    size: const Size.square(8.0),
                    activeSize: const Size(10.0, 8.0),
                    activeColor: Colors.blue,
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
