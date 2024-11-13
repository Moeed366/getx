import 'package:cloud_firestore/cloud_firestore.dart';

class MyUser{
  String name;
  String profilePic;
  String email;
  String uid;
  MyUser({required this.uid,required this.email,required this.name,required this.profilePic});
  Map<String,dynamic> toJson(){
    return {
      "name":name,
      "profilePic":profilePic,
      "email":email,
      "uid":uid
    };
  }
  static MyUser fromSnap(DocumentSnapshot doc){
    var snap= doc.data() as  Map<String,dynamic>;
    return MyUser(uid: snap['uid'], email:  snap['email'], name:  snap['name'], profilePic:  snap['profilePic']

    );
  }
}