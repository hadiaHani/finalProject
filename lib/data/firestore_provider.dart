import 'dart:developer';

import 'package:final_project_shopping/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreProvider {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  addUserToFirestore(UserModel userModel) async {
    try {
      firestore.collection('users').doc(userModel.id).set(userModel.toMap());
    } catch (e) {
      log(e.toString());
    }
  }

  getAllUsersFromFirestore() async {
    QuerySnapshot<Map<String, dynamic>> data =
        await firestore.collection('users').get();
    List<Map<String, dynamic>> dataDetails =
        data.docs.map((e) => e.data()).toList();
    log(dataDetails.toString());
  }

  getOneUserFromFirestore(String id) async {
    DocumentSnapshot<Map<String, dynamic>> doc =
        await firestore.collection('users').doc(id).get();
    Map<String, dynamic>? data = doc.data();
    log(data.toString());
  }
}
