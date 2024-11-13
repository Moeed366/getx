import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:getx/model/user.dart';
import 'package:image_picker/image_picker.dart';

class AuthController extends GetxController{
  static AuthController instance=Get.put(AuthController());
File? profile;
  Future<void> pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    if (pickedFile != null) {

     final _profileImage = File(pickedFile.path);
     this.profile=_profileImage;
    }
  }


Future<void> signup({required String userName,required String email,required String password,required File image}) async {
try{

if(userName.isNotEmpty&&email.isNotEmpty&&password.isNotEmpty&&image!=null){

UserCredential userCredential=await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);

String downloadurl=await _uploadimage(image);

MyUser myUser= MyUser(uid: userCredential.user!.uid, email: email, name: userName, profilePic: downloadurl);
await FirebaseFirestore.instance.collection('user').doc(userCredential.user!.uid).set(myUser.toJson());

}
else{
   Get.snackbar('error', 'data is empty');}




}catch(e){

  print(e);
}




}


Future<String>_uploadimage(File image) async {
Reference reference=FirebaseStorage.instance.ref('profileimage').child(FirebaseAuth.instance.currentUser!.uid);
UploadTask uploadTask =reference.putFile(image);
TaskSnapshot snapshot=await uploadTask;
String downloadimage= await snapshot.ref.getDownloadURL();
return downloadimage;
}



}