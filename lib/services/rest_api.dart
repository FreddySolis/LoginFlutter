import 'dart:convert';
import 'package:http/http.dart' as http;

class URLS{
  static const String BASE_URL = 'http://localhost:8000';
}

class ApiService {
  static Future<bool> login(body) async {
    final response = await http.post('${URLS.BASE_URL}/api/login', body: body);
    if (response.statusCode == 200){
      return true;
    }else{
      return false;
    }

  }
}