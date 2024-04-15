import 'dart:convert';

import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService {
  // late String token;
  final String appBaseUrl;

  // late Map<String, String> _mainHeaders;

  ApiClient({required this.appBaseUrl}) {
    baseUrl = appBaseUrl;
  }

  Future<Response> getData(String uri) async {
    print(uri);
    try {
      Response response = await get(uri);
      print("Tried");
      return response;
    } catch (e) {
      print("error trying");
      return Response(statusCode: 1, statusText: e.toString());
    }
  }

 Future<Response> postData(String uri, dynamic body) async {
    print(uri);
    String jsonString = jsonEncode(body);
    try{
      Response response=await post(uri, body);
      return response;
    }catch(e){
      print("cached");
      return Response(statusCode: 1,statusText: e.toString());
    }
  }
}
