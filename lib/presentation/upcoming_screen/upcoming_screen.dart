import 'package:diddit_final/presentation/completed_screen/completed_screen.dart';
import '../upcoming_screen/widgets/listclassname_item_widget.dart';
import '../upcoming_screen/widgets/listclassname_three_item_widget.dart';
import 'controller/upcoming_controller.dart';
import 'models/listclassname_item_model.dart';
import 'models/listclassname_three_item_model.dart';
import 'package:diddit_final/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:diddit_final/presentation/assignment_screen/assignment_screen.dart';
import 'package:diddit_final/presentation/register_screen/register_screen.dart';

class UpcomingScreen extends GetWidget<UpcomingController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(leading: Icon(Icons.account_circle), actions: <Widget>[
          IconButton(
              icon: Icon(Icons.home),
              onPressed: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UpcomingScreen()))
                  }),
          IconButton(
              icon: Icon(Icons.check_box),
              onPressed: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CompletedScreen()))
                  }),
        ]),
        backgroundColor: ColorConstant.purple50,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: getPadding(
                    left: 25,
                    top: 2,
                    right: 25,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: getHorizontalSize(
                            159.00,
                          ),
                          margin: getMargin(
                            left: 84,
                            top: 33,
                            right: 81,
                          ),
                          child: Text(
                            "msg_upcoming_assign".tr,
                            maxLines: null,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtWorkSansRomanSemiBold25,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 18,
                          right: 10,
                        ),
                        child: Text(
                          "lbl_today".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterBold12,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 6,
                        ),
                        child: Obx(
                          () => ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: Get.put(UpcomingController())
                                .upcomingModelObj
                                .value
                                .listclassnameItemList
                                .length,
                            itemBuilder: (context, index) {
                              ListclassnameItemModel model =
                                  Get.put(UpcomingController())
                                      .upcomingModelObj
                                      .value
                                      .listclassnameItemList[index];
                              return ListclassnameItemWidget(
                                model,
                              );
                            },
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: getPadding(
                            left: 84,
                            top: 17,
                            right: 84,
                          ),
                          child: Text(
                            "lbl_add_task".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterRegular12,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 19,
                          right: 10,
                        ),
                        child: Text(
                          "lbl_tomorrow".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterBold12,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 3,
                        ),
                        child: Obx(
                          () => ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: Get.put(UpcomingController())
                                .upcomingModelObj
                                .value
                                .listclassnameThreeItemList
                                .length,
                            itemBuilder: (context, index) {
                              ListclassnameThreeItemModel model =
                                  Get.put(UpcomingController())
                                      .upcomingModelObj
                                      .value
                                      .listclassnameThreeItemList[index];
                              return ListclassnameThreeItemWidget(
                                model,
                              );
                            },
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: getPadding(
                            left: 84,
                            top: 17,
                            right: 84,
                          ),
                          child: Text(
                            "lbl_add_task".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterRegular12,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 13,
                          right: 10,
                        ),
                        child: Text(
                          "lbl_later".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterBold12,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: getMargin(
                          top: 7,
                        ),
                        decoration:
                            AppDecoration.outlineDeeppurpleA10089.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: getPadding(
                                  left: 14,
                                  top: 10,
                                  right: 14,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 1,
                                        bottom: 3,
                                      ),
                                      child: Text(
                                        "lbl_class_name".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterLight10,
                                      ),
                                    ),
                                    Container(
                                      height: getSize(
                                        15.00,
                                      ),
                                      width: getSize(
                                        15.00,
                                      ),
                                      decoration: BoxDecoration(
                                        color: ColorConstant.deepPurpleA101,
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            5.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 14,
                                top: 2,
                                right: 14,
                              ),
                              child: Text(
                                "lbl_assignment_name".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegular12,
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: getPadding(
                                  left: 14,
                                  top: 9,
                                  right: 14,
                                  bottom: 10,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      padding: getPadding(
                                        left: 10,
                                        top: 3,
                                        right: 10,
                                        bottom: 3,
                                      ),
                                      decoration: AppDecoration
                                          .txtFillDeeporange100
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.txtCircleBorder9,
                                      ),
                                      child: Text(
                                        "lbl_hard".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: AppStyle.txtInterSemiBold10,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 2,
                                        bottom: 1,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 2,
                                              bottom: 1,
                                            ),
                                            child: CommonImageView(
                                              svgPath: ImageConstant.imgPlay,
                                              height: getSize(
                                                12.00,
                                              ),
                                              width: getSize(
                                                12.00,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 7,
                                            ),
                                            child: Text(
                                              "lbl_7_00am".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.right,
                                              style: AppStyle.txtInterRegular12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
