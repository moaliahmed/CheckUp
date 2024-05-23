import 'package:checkupapp/Core/Class/statusrequest.dart';
import 'package:checkupapp/Core/Function/handlingdatacontroller.dart';
import 'package:checkupapp/Core/Services/SharedPre.dart';
import 'package:checkupapp/Data/DataSource/Remote/Auth/userInfo.dart';
import 'package:get/get.dart';
import 'login_controller.dart';


class UserInfoController extends GetxController {
  LoginControllerImp loginControllerImp=LoginControllerImp();
  UserInfoData userInfoData = UserInfoData(Get.find());
  // todo you have to map the respone into list of model it will be easier to deal with
  Map data = {};
  late StatusRequest statusRequest;

  getData({required String token}) async {

    statusRequest = StatusRequest.loading;
    var response = await userInfoData.getData(token);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      data.addAll(response['data']);
      print(data);

    }
    update();
  }


  @override
  void onInit() {
    String test;
    test=SharedPrefrenceHelper.getData(key: 'token');
    getData(token: test);
    super.onInit();
  }
}
