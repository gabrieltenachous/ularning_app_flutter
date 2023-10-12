import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/pages/welcome/bloc/welcome_blocs.dart';
import 'package:ulearning_app/pages/welcome/bloc/welcome_events.dart';
import 'package:ulearning_app/pages/welcome/bloc/welcome_states.dart';

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
      child: Scaffold(body: BlocBuilder<WelcomeBloc, WelcomeState>(
        builder: (context, state) {
          return Container(
            margin: EdgeInsets.only(
              top: 34.h,
            ),
            width: 375.w,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                PageView(
                  onPageChanged: (index) {
                    state.page = index;
                    BlocProvider.of<WelcomeBloc>(context).add(WelcomeEvent());
                  },
                  children: [
                    _page(
                      index: 0,
                      context: context,
                      buttonName: "next",
                      imagePath: "image path",
                      subTitle:
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dumm",
                      title: "First see Learning",
                    ),
                    _page(
                      index: 1,
                      context: context,
                      buttonName: "next",
                      imagePath: "image path",
                      subTitle:
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dumm",
                      title: "First see Learning",
                    ),
                    _page(
                      index: 1,
                      context: context,
                      buttonName: "next",
                      imagePath: "image path",
                      subTitle:
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dumm",
                      title: "First see Learning",
                    ),
                  ],
                ),
                Positioned(
                  bottom: 100.h,
                  child: DotsIndicator(
                    position: state.page,
                    dotsCount: 3,
                    mainAxisAlignment: MainAxisAlignment.center,
                    decorator: DotsDecorator(
                      color: Colors.grey,
                      size: const Size.square(8.0),
                      activeSize: const Size(18.0, 8.0),
                      activeColor: Colors.blue,
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      )),
    );
  }
}

class _page extends StatelessWidget {
  final int index;
  final BuildContext context;
  final String buttonName;
  final String title;
  final String subTitle;
  final String imagePath;

  const _page({
    super.key,
    required this.index,
    required this.context,
    required this.buttonName,
    required this.title,
    required this.subTitle,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 345.w,
          height: 345.w,
          child: Text(
            imagePath,
          ),
        ),
        Container(
          child: Text(
            title,
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
            subTitle,
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
                offset: const Offset(0, -1),
              )
            ],
          ),
          child: Center(
            child: Text(
              buttonName,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
