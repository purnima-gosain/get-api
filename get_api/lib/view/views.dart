import 'package:dio/dio.dart';
import 'package:get_api/model/model.dart';

List<Product> postModel = [];

Future<PostModel> fetchData() async {
  final Dio dio = Dio();
  print("hello");
  final response = await dio.get("https://dummyjson.com/products");
  print(response.statusCode);
  if (response.statusCode == 200) {
    var values;
    print(response.statusCode);
    values = PostModel.fromJson(response.data);
    postModel = values.product;
    print(values);
    // if (values.isNotEmpty) {
    //   print("##############################################");
    //   for (int i = 0; i < values.length; i++) {
    //     print("**********************************************");
    //     if (values[i] != null) {
    //       print("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
    //       postModel.add(Product.fromJson(values[i]));
    //       print(values);
    //     }
    //   }
    // }
    return values;
  } else {
    throw Exception("Unable to fetch data");
  }
}
