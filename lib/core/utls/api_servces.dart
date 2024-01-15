import 'package:cloud_firestore/cloud_firestore.dart';

class ApiService {
  Future<QuerySnapshot<Map<String, dynamic>>> get(
      {required String endPoint}) async {
    var response = await FirebaseFirestore.instance.collection('$endPoint').get();
    return response;

  }
}
