import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pshar_khmer/constants/app_constants.dart';

class AllItemTab extends StatelessWidget {
  const AllItemTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: primaryMargin),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(primaryMargin),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                //  card item
                Card(
                  elevation: 10,
                  margin: EdgeInsets.only(
                    left: size.width * 0.2 / 2.0 + 10,
                    bottom: 20,
                  ),
                  child: Container(
                    width: size.width,
                    height: size.height * 0.15,
                    padding: EdgeInsets.only(
                      left: size.width * 0.2 / 2.0 + 20,
                      top: primaryMargin,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name",
                          style: TextStyle(
                            color: colorAppBlack,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: primaryMargin,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "color",
                              style: TextStyle(
                                color: colorAppGray,
                              ),
                            ),
                            SizedBox(
                              width: primarySpace * 3,
                            ),
                            Container(
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(15),
                              ),
                            )
                          ],
                        ),
                        Text(
                          "Size",
                        ),
                        Container(
                          width: size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "\$86",
                                style: TextStyle(
                                  color: colorAppBlack,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              IconButton(
                                icon: Icon(Icons.shopping_cart),
                                onPressed: () {},
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -20,
                  child: Container(
                    width: size.width * 0.25,
                    height: size.height * 0.2 / 2 + 10,
                    child: Image.network(
                      'https://lh3.googleusercontent.com/proxy/c3P4IIYWzLXVoI5RRmdW26BmGwc9D9MRo1un9VT5cPWeyorgc7CO7k0kG1lAqg1MyUQ6VZmtsPEMNmvAVxltwdtbmnsbOzGaFBn25wy2eu9JR5SIk-lCL9RL2UkxebkS0kyeOTLQeWQlPoM_MtETNVDSFfQxZ3EqazO_rQ',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
