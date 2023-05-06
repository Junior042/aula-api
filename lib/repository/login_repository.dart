import 'dart:convert';

import 'api.dart';

class LoginRepository {
  /// instancia da classe do DIO
  final api = API();

  /// metodo que busca as informações
  Future login() async {
    var params = {
      "email": "string",
      "password": "string"
    };

    try {
      /// metodo get da requisição
      final response = await api.post(
          "http://ec2-44-211-218-227.compute-1.amazonaws.com:8080/login");

      /// validação de resosta correta
      if (response?.statusCode == 200) {
        print(response?.data);
      } else {
        return null;
      }
    } catch (e, s) {
      print(e);
      print(s);
      throw (e);
    }
  }
}