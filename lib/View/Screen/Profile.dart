import 'package:checkupapp/Controller/Questions/Question_Controller.dart';
import 'package:checkupapp/Controller/auth/userInfo_controller.dart';
import 'package:checkupapp/Core/Class/handlingdataview.dart';
import 'package:checkupapp/Core/Constant/Color.dart';
import 'package:checkupapp/Core/Constant/ImageAsset.dart';
import 'package:checkupapp/View/Widget/Auth/customdrawer.dart';
import 'package:checkupapp/View/Widget/Auth/logoauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});


  @override
  Widget build(BuildContext context) {
     Get.put(UserInfoController());

   // UserInfoController controller = Get.put(UserInfoController());

    return Scaffold(
        appBar: AppBar(
          title:const Text(
            "Profile",
            style:TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: AppColor.white),
          ),
          backgroundColor: AppColor.primaryColor,
          centerTitle: true,
        ),
      //  drawer: const CustomDrawer(),
        body: GetBuilder<UserInfoController>(
          builder: (controller) {
            return HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const LogoAuth(),
                      SizedBox(height: 15,),
                      SizedBox(
                          width: double.infinity,
                          child: Card(
                              child: Text(
                            "${controller.data['name']}",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ))),
                      const SizedBox(height: 10,),
                      SizedBox(
                          width: double.infinity,
                          child: Card(
                              child: Text(
                            "${controller.data['email']}",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ))),
                      const SizedBox(height: 10,),
                      SizedBox(
                          width: double.infinity,
                          child: Card(
                              child: Text(
                            "${controller.data['phone_number']}",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ))),
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
}
