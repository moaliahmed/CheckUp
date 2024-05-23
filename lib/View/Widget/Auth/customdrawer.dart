import 'package:checkupapp/Controller/auth/logout_controller.dart';
import 'package:checkupapp/Core/Class/statusrequest.dart';
import 'package:checkupapp/Core/Constant/Color.dart';
import 'package:checkupapp/View/Screen/Profile.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(logOutControllerImp());
    return Drawer(
        child:GetBuilder<logOutControllerImp>(builder: (controller)=>
        controller.statusRequest == StatusRequest.loading?
        const Center(child: Text("Loading..."),)
            :ListView(
          padding: EdgeInsets.zero,
          children: [
            const  UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1485290334039-a3c69043e517?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8fHx8fHx8MTYyOTU3NDE0MQ&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=300'),
              ),
              accountEmail: Text('Mostafa@gmail.com'),
              accountName: Text(
                'Mostafa Gomaa',
                style: TextStyle(fontSize: 24.0),
              ),
              decoration: BoxDecoration(
                color: Colors.black87,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(
                'Profile',
                style: TextStyle(fontSize: 24.0),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text(
                'Log Out',
                style: TextStyle(fontSize: 24.0),
              ),
              onTap: () {
                controller.logout();
                controller.logout().then((value) => ScaffoldMessenger.of(context).showSnackBar( SnackBar(
                  duration:const Duration(seconds: 2),
                  content: Center(child: Text("56".tr,style:const TextStyle(fontSize: 18,
                      fontWeight: FontWeight.bold),)),
                  backgroundColor: (AppColor.grey),)));
              },
            ),


          ],
        ),

        )
    );
  }
}






