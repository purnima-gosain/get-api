import 'package:flutter/material.dart';
import 'package:get_api/provider/provider.dart';
import 'package:get_api/view/views.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    Future.microtask(() {
      Provider.of<PostProvider>(context, listen: false).getPost();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Post Details")),
      ),
      body: Consumer<PostProvider>(builder: (context, child, value) {
        return ListView.builder(
            itemCount: postModel.length,
            itemBuilder: (BuildContext context, index) {
              return Column(
                children: [
                  Image.network(postModel[index].thumbNail ?? ""),
                  Text(postModel[index].title ?? ""),
                  Text(postModel[index].description ?? ""),
                  Text(postModel[index].brand ?? ""),
                  Text("Price: \$ ${postModel[index].price.toString()}"),
                  SizedBox(
                    height: 10,
                  )
                ],
              );
            });
      }),
    );
  }
}
