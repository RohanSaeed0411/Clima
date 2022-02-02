import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper({@required this.url});

  final String url;

  Future getData() async {
    http.Response response = await http.get(
      Uri.parse(url),
    );

    String data;
    if (response.statusCode == 200) {
      data = response.body;
      // print(data);
      var decodedData = jsonDecode(data);
      return decodedData;
    } else {
      print(response.statusCode);
    }
  }
}
