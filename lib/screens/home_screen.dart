import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:network_requests/model/post_model.dart';
import 'package:network_requests/services/http_service.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String data = "";

  // void _apiPostList() {
  //   Network.GET(Network.API_LIST, Network.paramsEmpty()).then((response) => {
  //     print(response),
  //     _showResponse(response!),
  //   });
  // }



  // void _apiCreatePost(Post post){
  //   Network.POST(Network.API_CREATE, Network.paramsCreate(post)).then((response) => {
  //     print(response),
  //     _showResponse(response ?? 'No data'),
  //   });
  // }


  // void _apiPostUpdate(Post post){
  //   Network.PUT(Network.API_UPDATE + post.userId.toString(), Network.paramsUpdate(post)).then((response) => {
  //     print(response),
  //     _showResponse(response ?? 'no data'),
  //   });
  // }

  // void _apiPostDelete(Post post){
  //   Network.DEL(Network.API_DELETE + post.userId.toString(), Network.paramsEmpty()).then((response) => {
  //     print(response),
  //     _showResponse(response ?? 'no data'),
  //   });
  // }

  void _showResponse(String response){
    setState(() {
      data = response;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Post Request
    // var post = Post(name: 'Abdulqodir', salary: 4500000, age: 21, id: 1, userId: 1);

    // PUT Request
    // var post = Post(name: "Azim", salary: 3250000, age: 20, id: 2, userId: 21);
    
    // DELETE Request
    // var post = Post(userId: 2, name: 'Eshmat', salary: 1500000, age: 18, id: 3);

    // _apiPostList();
    // _apiCreatePost(post);
    // _apiPostUpdate();
    // _apiPostDelete(post);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(data != null ? data : "N Data"),
      ),
    );
  }
}
