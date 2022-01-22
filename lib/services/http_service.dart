import 'dart:convert';
import 'package:http/http.dart';
import 'package:network_requests/model/post_model.dart';

class Network{
  static String BASE = 'dummy.restapiexample.com';

  /* HTTP Apis */
  static String API_LIST = '/api/v1/employees';
  static String API_CREATE = '/create';
  static String API_UPDATE = '/update/';  //{id}
  static String API_DELETE = '/delete/';  //{id}

  /* HTTP Requests */
  static Future<String?> GET(String api, Map<String, String> params) async {
    var uri = Uri.http(BASE, api, params);
    var response = await get(uri);
    if(response.statusCode == 200) {
      return response.body;
    }
    return null;
  }

  static Future<String?> POST(String api, Map<String, String> params) async {
    print('hello' + api);
    var uri = Uri.http(BASE, api);
    var response = await post(uri, body: jsonEncode(params));
    if(response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    }
    return null;
  }

  static Future<String?> PUT(String api, Map<String, String> params) async {
    var uri = Uri.http(BASE, api);
    var response = await put(uri, body: jsonEncode(params));
    if(response.statusCode == 200) {
      return response.body;
    }
    return null;
  }

  static Future<String?> DEL(String api, Map<String, String> params) async {
    var uri = Uri.http(BASE, api, params);
    var response = await delete(uri);
    if(response.statusCode == 200) {
      return response.body;
    }
    return null;
  }
  /* HTTP Params */

  static Map<String, String> paramsEmpty() {
    Map<String, String> params = {};
    return params;
  }

  static Map<String, String> paramsCreate(Post post){
    Map<String, String> params = {};
    params.addAll({
      'name': post.name,
      'salary': post.salary.toString(),
      'age': post.age.toString(),
      'id': post.id.toString()
    });
    return params;
  }

  // static Map<String, String> paramsUpdate(Post post){
  //   Map<String, String> params = {};
  //   params.addAll({
  //     'userId': post.userId.toString(),
  //     'name': post.name,
  //     'salary': post.salary.toString(),
  //     'age': post.age.toString(),
  //     'id': post.id.toString();
  //   });
  // }
}