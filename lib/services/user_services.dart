import 'dart:convert';
import 'dart:developer';

import 'package:fintek_app/models/user_model.dart';
import 'package:http/http.dart' as http;

class UserService {

  Future<UserModel> fetchDataUser() async {
    var url = 'https://reqres.in/api/users/2';
    var header = {
      'Accept': 'application/json',
    };

    var response = await http.get(
      Uri.parse(url),
    );

    var data = jsonDecode(response.body);

    try {
      UserModel userModel = UserModel.fromJson(data);
      return userModel;
    } catch (e) {
     rethrow;
    }
  }
}