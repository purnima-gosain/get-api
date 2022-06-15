import 'package:flutter/cupertino.dart';
import 'package:get_api/model/model.dart';
import 'package:get_api/view/views.dart';

class PostProvider extends ChangeNotifier {
  PostModel? _postModel;

  PostModel? get postMod {
    return _postModel;
  }

  set post(PostModel? pmodel) {
    _postModel = pmodel;
  }

  getPost() async {
    _postModel = await fetchData();
    notifyListeners();
  }
}
