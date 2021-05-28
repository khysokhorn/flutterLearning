import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchContainerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          width: 180,
          height: 130,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(
              Radius.circular(
                10,
              ),
            ),
          ),
          child: Container(
            child: Column(
              children: [
                Container(
                  width: 180,
                  height: 60,
                  decoration: BoxDecoration(color: Colors.blueGrey),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
