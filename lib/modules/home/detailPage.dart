import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String image = ModalRoute.of(context).settings.arguments;
    print("image are $image");
    return Scaffold();
  }
}
