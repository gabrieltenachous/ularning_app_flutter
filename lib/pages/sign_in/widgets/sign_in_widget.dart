import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/common/values/colors.dart';

AppBar buildAppBar() {
  return AppBar(
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1.0),
      child: Container(
        color: AppColors.primarySecondaryBackground,
        //height difines the thickness of the line
        height: 1.0,
      ),
    ),
    title: Center(
      child: Text(
        "Log In",
        style: TextStyle(
          color: AppColors.primaryText,
          fontSize: 16.sp,
          fontWeight: FontWeight.normal,
        ),
      ),
    ),
  );
}

//We need context for acesing bloc
Widget buildThirdPartyLogin(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(
      top: 40.h,
      bottom: 20.h,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _reusableIcons("google"),
        _reusableIcons("apple"),
        _reusableIcons("facebook"),
      ],
    ),
  );
}

Widget _reusableIcons(String iconName) {
  return GestureDetector(
    onTap: () {},
    child: SizedBox(
      width: 40.w,
      height: 40.w,
      child: Image.asset("assets/icons/$iconName.png"),
    ),
  );
}

Widget reusableText(String text) {
  return Container(
    margin: EdgeInsets.only(
      bottom: 5.h,
    ),
    child: Text(
      text,
      style: TextStyle(
        color: Colors.grey.withOpacity(0.5),
        fontWeight: FontWeight.normal,
        fontSize: 14.sp,
      ),
    ),
  );
}

Widget buildTextField(
  String hintText,
  String textType,
  String iconName,
  void Function(String value)? func,
) {
  return Container(
    width: 325.w,
    height: 50.h,
    margin: EdgeInsets.only(
      bottom: 20.h,
    ),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(15.w),
      ),
      border: Border.all(color: Colors.black),
    ),
    child: Row(
      children: [
        Container(
          width: 16.w,
          margin: EdgeInsets.only(
            left: 17.w,
          ),
          height: 16.w,
          child: Image.asset(
            "assets/icons/$iconName.png",
          ),
        ),
        SizedBox(
          width: 270.w,
          height: 50.h,
          child: TextField(
            onChanged: (value) => func!(value),
            keyboardType: TextInputType.multiline,
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Avenir",
              fontWeight: FontWeight.normal,
              fontSize: 14.sp,
            ),
            decoration: InputDecoration(
              hintText: hintText,
              border: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              disabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              hintStyle: const TextStyle(
                color: AppColors.primarySecondaryElementText,
              ),
            ),
            autocorrect: false,
            obscureText: textType == "password" ? true : false,
          ),
        )
      ],
    ),
  );
}

Widget forgotPassword() {
  return Container(
    width: 260.w,
    height: 44.h,
    child: GestureDetector(
      onTap: () {},
      child: Text(
        "Forgot Password",
        style: TextStyle(
          color: AppColors.primaryText,
          decoration: TextDecoration.underline,
          fontSize: 12.sp,
          decorationColor: AppColors.primaryText,
        ),
      ),
    ),
  );
}

Widget buildLogInAdnRegButton(
  String buttonName,
  String buttonType,
  void Function()? func,
) {
  return GestureDetector(
    onTap: func,
    child: Container(
      width: 325.w,
      height: 50.h,
      margin: EdgeInsets.only(
        left: 25.w,
        right: 25.w,
        top: buttonType == "login" ? 40.h : 20.h,
      ),
      decoration: BoxDecoration(
        color: buttonType == "login"
            ? AppColors.primaryElement
            : AppColors.primaryBackground,
        borderRadius: BorderRadius.circular(15.w),
        border: Border.all(
          //check for registration button border color
          color: buttonType == "login"
              ? Colors.transparent
              : AppColors.primaryFourthElementText,
        ),
        boxShadow: [
          BoxShadow(
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 1),
            color: Colors.grey.withOpacity(0.1),
          ),
        ],
      ),
      child: Center(
        child: Text(
          buttonName,
          style: TextStyle(
            fontSize: 16.sp,
            color: buttonType == "login"
                ? AppColors.primaryBackground
                : AppColors.primaryText,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    ),
  );
}
