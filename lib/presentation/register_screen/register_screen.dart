import 'dart:js';

import 'package:diddit_final/presentation/assignment_screen/assignment_screen.dart';
import 'package:diddit_final/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:diddit_final/presentation/upcoming_screen/upcoming_screen.dart';

import 'controller/register_controller.dart';
import 'package:diddit_final/core/app_export.dart';
import 'package:diddit_final/core/utils/validation_functions.dart';
import 'package:diddit_final/widgets/custom_button.dart';
import 'package:diddit_final/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends GetWidget<RegisterController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: getPadding(
                      left: 25,
                      top: 156,
                      right: 25,
                    ),
                    child: Text(
                      "lbl_welcome_onboard".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtWorkSansRomanRegular20,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 25,
                      top: 20,
                      right: 25,
                    ),
                    child: Text(
                      "msg_let_s_turn_your".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterRegular15,
                    ),
                  ),
                  CustomTextFormField(
                    width: 324,
                    focusNode: FocusNode(),
                    controller: RegisterController().textFieldController,
                    hintText: "msg_enter_your_full".tr,
                    margin: getMargin(
                      left: 25,
                      top: 50,
                      right: 25,
                    ),
                    validator: (value) {
                      if (!isText(value)) {
                        return "Please enter valid text";
                      }
                      return null;
                    },
                  ),
                  CustomTextFormField(
                    width: 324,
                    focusNode: FocusNode(),
                    controller: RegisterController().textFieldOneController,
                    hintText: "msg_enter_your_emai".tr,
                    margin: getMargin(
                      left: 25,
                      top: 26,
                      right: 25,
                    ),
                    validator: (value) {
                      if (value == null ||
                          (!isValidEmail(value, isRequired: true))) {
                        return "Please enter valid email";
                      }
                      return null;
                    },
                  ),
                  CustomTextFormField(
                    width: 324,
                    focusNode: FocusNode(),
                    controller: RegisterController().textFieldTwoController,
                    hintText: "msg_enter_your_pass".tr,
                    margin: getMargin(
                      left: 25,
                      top: 26,
                      right: 25,
                    ),
                    validator: (value) {
                      if (value == null ||
                          (!isValidPassword(value, isRequired: true))) {
                        return "Please enter valid password";
                      }
                      return null;
                    },
                    isObscureText: true,
                  ),
                  CustomTextFormField(
                    width: 324,
                    focusNode: FocusNode(),
                    controller: RegisterController().textFieldThreeController,
                    hintText: "msg_confirm_your_pa".tr,
                    margin: getMargin(
                      left: 25,
                      top: 26,
                      right: 25,
                    ),
                    textInputAction: TextInputAction.done,
                    validator: (value) {
                      if (value == null ||
                          (!isValidPassword(value, isRequired: true))) {
                        return "Please enter valid password";
                      }
                      return null;
                    },
                    isObscureText: true,
                  ),
                  CustomButton(
                      width: 325,
                      text: "lbl_register".tr,
                      margin: getMargin(
                        left: 25,
                        top: 63,
                        right: 25,
                      ),
                      variant: ButtonVariant.FillDeeppurpleA100,
                      shape: ButtonShape.Square,
                      padding: ButtonPadding.PaddingAll19,
                      fontStyle: ButtonFontStyle.WorkSansRomanSemiBold13,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UpcomingScreen()));
                      }),
                  Container(
                    margin: getMargin(
                      left: 25,
                      top: 18,
                      right: 25,
                      bottom: 20,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_already_have_an2".tr,
                            style: TextStyle(
                              color: ColorConstant.black900,
                              fontSize: getFontSize(
                                12,
                              ),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          WidgetSpan(child: signInWidget("Sign In")),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  // bruh change already what

  Widget signInWidget(String name) {
    return GestureDetector(
        child: Text(name),
        onTap: () {
          navigator?.push<void>(MaterialPageRoute<void>(
              builder: (BuildContext context) => SignInScreen()));
        });
  }
}
