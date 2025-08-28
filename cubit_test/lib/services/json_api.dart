import 'package:cubit_test/model/post.dart';
import 'package:cubit_test/model/user.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class JsonPlaceHolderAPI {
  var url = Uri.https("jsonplaceholder.typicode.com", "/users");
  var url2 = Uri.https("jsonplaceholder.typicode.com", "/posts",{"_limit":"10"});

  Future<List<UserModel>> getUser() async {
     http.Response response =  await http.get(url);

     if(response.statusCode == 200){
        List<dynamic> jsonData = convert.jsonDecode(response.body);
        return jsonData.map((user) => UserModel.fromJson(user)).toList();
     }else{
      throw Exception("Error al cargar los usuarios: ${response.statusCode}");
     }
  }

  Future<List<PostModel>> getPost() async {
     http.Response response =  await http.get(url2);
     if(response.statusCode == 200){
        List<dynamic> jsonData = convert.jsonDecode(response.body);
        return jsonData.map((post) => PostModel.fromJson(post)).toList();
     }else{
      throw Exception("Error al cargar los usuarios: ${response.statusCode}");
     }
  }
}
