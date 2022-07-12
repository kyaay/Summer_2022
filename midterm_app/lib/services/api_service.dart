import 'package:midterm_app/models/product.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/cart.dart';

class ApiService {
  static const String baseUrl = 'https://fakestoreapi.com';
  static const headers = {'Content-type': 'application/json'};

  Future login(String username, String password) async {
    final body = {
      'username': username,
      'password': password,
    };
    final response = await http.post(Uri.parse(baseUrl), body: body);
    return response.body;
  }
}
