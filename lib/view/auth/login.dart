import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx/view/auth/signup.dart';

import '../widgets/text_input.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
TextEditingController emai_controller=new TextEditingController();
  TextEditingController password_controller=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment:  MainAxisAlignment.center,
          children: [
            Row(children: [ElevatedButton(onPressed: (){

Get.updateLocale(Locale('en','UK'));

              }, child: const Text("change  tous"))],),
            Row(children: [ElevatedButton(onPressed: (){

              Get.updateLocale(Locale('en','US'));

            }, child: const Text("change language to uk"))],),
            Row(children: [ElevatedButton(onPressed: (){

              Get.updateLocale(Locale('ur','PK'));

            }, child: const Text("change language tro urdu"))],),
             Text("login".tr),
            SizedBox(height: 20,),
            TextInputField(controller: emai_controller, label: 'Email', icon:  Icons.email),
            SizedBox(height: 20,),
            TextInputField(controller: password_controller, label: 'password', icon:  Icons.password),
            ElevatedButton(onPressed: (){}, child: Text("login".tr)),
            Row(mainAxisAlignment: MainAxisAlignment.end,children: [GestureDetector(
                onTap: (){
                  Get.to(()=>RegistrationScreen());
                },

                child: Text("signup         "))],)
          ],
        ),
      ),
    ),);
  }
}
