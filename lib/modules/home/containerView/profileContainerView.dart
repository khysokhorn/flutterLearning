import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileContainerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Column(
            children: [
              Container(
                width: size.width,
                height: size.height * 0.25,
                color: Colors.red,
                child: Column(
                  children: [
                    IconButton(icon: Icon(Icons.settings), onPressed: () {}),
                    Container(

                      child: Image.asset(
                        'assets/images/profile1.png',
                        width: 95,
                        height: 95
                        ,
                      ),
                    )
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
