import 'package:checkupapp/Core/Class/statusrequest.dart';
import 'package:checkupapp/Core/Constant/routes.dart';
import 'package:checkupapp/Core/Function/handlingdatacontroller.dart';
import 'package:checkupapp/Data/DataSource/Remote/Auth/logout.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


abstract class logOutController extends GetxController {
  logout();
}

class logOutControllerImp extends logOutController {
  GlobalKey<FormState> formstate= GlobalKey<FormState>();
  StatusRequest? statusRequest;
  logOutData logoutdata = logOutData(Get.find());
  String? token;
  List data = [];
  @override
  logout() async{

    statusRequest = StatusRequest.loading;
    update();
    var response = await logoutdata.postdata(token!);
    print(token);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {

      Get.offNamed(AppRoutes.login);

    }

    update();


  }


  @override
  void onInit() {
    token =Get.arguments['token'];
    super.onInit();
  }
  @override
  void dispose() {
    super.dispose();
  }
}
