import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:youtube_tutorial_hostel_management/common/constants.dart';
import 'package:youtube_tutorial_hostel_management/common/custom_text_field.dart';
import 'package:youtube_tutorial_hostel_management/common/spacing.dart';
import 'package:youtube_tutorial_hostel_management/theme/colors.dart';
import 'package:youtube_tutorial_hostel_management/theme/text_theme.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  static final _formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController phonenumber = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    email.dispose();
    password.dispose();
    username.dispose();
    firstname.dispose();
    lastname.dispose();
    phonenumber.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                heightSpacer(40),
                Center(
                  child: Image.asset(
                    AppConstants.logo,
                    height: 150.h,
                    width: 150.h,
                  ),
                ),
                heightSpacer(30),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Register your account',
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: const Color(0xff333333),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                heightSpacer(25),
                Text("Username",style: AppTextTheme.kLabelStyle,),
                CustomTextField(
                  controller: username,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xffd1d8ff),
                    ),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  inputHint: "Enter your Username",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'username is required';
                    }
                    return null;
                  },
                ),
                heightSpacer(25),
                Text("First Name",style: AppTextTheme.kLabelStyle,),
                CustomTextField(
                  controller: firstname,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xffd1d8ff),
                    ),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  inputHint: "Enter your first name",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'First name is required';
                    }
                    return null;
                  },
                ),
                heightSpacer(25),
                Text("Last Name",style: AppTextTheme.kLabelStyle,),
                CustomTextField(
                  controller: firstname,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xffd1d8ff),
                    ),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  inputHint: "Enter your last name",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Last name is required';
                    }
                    return null;
                  },
                ),
                heightSpacer(25),
                Text("Email",style: AppTextTheme.kLabelStyle,),
                CustomTextField(
                  controller: firstname,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xffd1d8ff),
                    ),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  inputHint: "Enter your email",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Email is required';
                    }
                    return null;
                  },
                ),
                heightSpacer(25),
                Text("Password",style: AppTextTheme.kLabelStyle,),
                CustomTextField(
                  controller: firstname,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xffd1d8ff),
                    ),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  inputHint: "Enter your password",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Password is required';
                    }
                    return null;
                  },
                ),
              ],
            )),
      ),
    );
  }
}
