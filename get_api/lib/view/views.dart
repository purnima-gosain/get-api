import 'package:dio/dio.dart';
import 'package:get_api/model/model.dart';

List<Product> postModel = [];

Future<PostModel> fetchData() async {
  final Dio dio = Dio();
  print("hello");
  final response = await dio.get("https://dummyjson.com/products");

  if (response.statusCode == 200) {
    var values;

    values = PostModel.fromJson(response.data);
    postModel = values.product;

    return values;
  } else {
    throw Exception("Unable to fetch data");
  }
}
