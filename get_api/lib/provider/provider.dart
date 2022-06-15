import 'package:flutter/cupertino.dart';
import 'package:get_api/model/model.dart';
import 'package:get_api/view/views.dart';

class PostProvider extends ChangeNotifier {
  List<PostModel>? _postModel;

  List<PostModel>? get postMod {
    return _postModel;
  }

  set post(List<PostModel>? pmodel) {
    _postModel = pmodel;
  }

  getPost() async {
    _postModel = await fetchData();
    notifyListeners();
  }
}
