import 'package:dio/dio.dart';
import 'package:get_api/model/model.dart';

List<PostModel> postModel = [];

Future<List<PostModel>> fetchData() async {
  final Dio dio = Dio();
  final response = await dio.get("https://dummyjson.com/posts");

  if (response.statusCode == 200) {
    List<dynamic> values = [];
    values = response.data;
    if (values.isNotEmpty) {
      for (int i = 0; i < values.length; i++) {
        if (values[i] != null) {
          postModel.add(PostModel.fromJson(values[i]));
        }
      }
    }
    return postModel;
  } else {
    throw Exception("Unable to fetch data");
  }
}
