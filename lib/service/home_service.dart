import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../model/home_profil.dart';
import '../model/home_status.dart';

class StatusService {
  static Future<dynamic> getProfile() async {
    try {
      Response response = await Dio(BaseOptions(validateStatus: (status) {
        if (status! >= 100 && status <= 599) {
          return true;
        } else {
          return false;
        }
      })).get("http://localhost:8000/10.0.2.2:3000/home/profile");

      if (response.statusCode == 200) {
        return HomeProfil.fromJson(response.data);
      } else {
        return response.statusMessage.toString();
      }
    } on DioError catch (e) {
      return e.message.toString();
    }
  }

  static Future<dynamic> getSTatus() async {
    try {
      Response response = await Dio(BaseOptions(validateStatus: (status) {
        if (status! >= 100 && status <= 599) {
          return true;
        } else {
          return false;
        }
      })).get("http: //10.0.2.2:3000/home/status");
      if (response.statusCode == 200) {
        return HomeStatus.fromJson(response.data);
      } else {
        return response.statusMessage.toString();
      }
    } on DioError catch (e) {
      return e.message.toString();
    }
  }

}
