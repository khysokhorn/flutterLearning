import 'package:flutter/material.dart';
import 'package:pshar_khmer/constants/app_constants.dart';
import 'package:pshar_khmer/widgets/widgets.dart';

class HomeContainerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("New Trend"),
        actions: [
          cartButton(),
          SizedBox(
            width: primaryMargin,
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: primaryMargin),
        child: Column(
          children: [
            //tow button on the top
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.filter_list),
                        SizedBox(
                          width: primaryMargin,
                        ),
                        Text("Sort")
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: primaryMargin,
                ),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.filter_list_alt),
                        SizedBox(
                          width: primaryMargin,
                        ),
                        Text("Filter")
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            // list
            Expanded(
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 10,
                ),
                children: List.generate(20, (index) {
                  return Stack(
                    alignment: Alignment.topCenter,
                    clipBehavior: Clip.none,
                    children: [
                      //  card item
                      Container(
                        width: size.width,
                        height: size.height * 0.5,
                        margin: EdgeInsets.only(
                          top: (size.height * 0.2 / 2 + 10) / 2,
                        ),
                        child: Card(
                          elevation: 10,
                          child: Container(
                            margin: EdgeInsets.only(
                                top: (size.height * 0.2 / 2 + 10) / 2,
                                left: primaryMargin,
                                right: primaryMargin),
                            child: Text("hi"),
                          ),
                        ),
                      ),
                      Container(
                        width: size.width * 0.25,
                        height: (size.height * 0.2 / 2 + 10),
                        margin: EdgeInsets.only(
                          top: primarySpace,
                        ),
                        child: Image.network(
                          'https://lh3.googleusercontent.com/proxy/c3P4IIYWzLXVoI5RRmdW26BmGwc9D9MRo1un9VT5cPWeyorgc7CO7k0kG1lAqg1MyUQ6VZmtsPEMNmvAVxltwdtbmnsbOzGaFBn25wy2eu9JR5SIk-lCL9RL2UkxebkS0kyeOTLQeWQlPoM_MtETNVDSFfQxZ3EqazO_rQ',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}

/*
*
* Stack(
                      alignment: Alignment.topCenter,
                      clipBehavior: Clip.none,
                      children: [
                        //  card item
                        Container(
                          width: size.width,
                          height: size.height * 0.5,
                          child: Card(
                            elevation: 10,
                            color: Colors.red,
                          ),
                        ),
                        Container(
                          width: size.width * 0.25,
                          height: (size.height * 0.2 / 2 + 10),
                          child: Image.network(
                            'https://lh3.googleusercontent.com/proxy/c3P4IIYWzLXVoI5RRmdW26BmGwc9D9MRo1un9VT5cPWeyorgc7CO7k0kG1lAqg1MyUQ6VZmtsPEMNmvAVxltwdtbmnsbOzGaFBn25wy2eu9JR5SIk-lCL9RL2UkxebkS0kyeOTLQeWQlPoM_MtETNVDSFfQxZ3EqazO_rQ',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
*
*
*
*
  child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 50),
                                  color: Colors.grey,
                                ),
                                Align(
                                  child: Image.network(
                                    'https://images.squarespace-cdn.com/content/v1/59aa18678fd4d28748fdc362/1582234001660-F0S8MPSOXU2TFPKTLT9L/ke17ZwdGBToddI8pDm48kIIWdAnyBSrZ5E6Gv7JXlDh7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0k9kZPbuygN4RSDPe_G5PO_pbVb0jdkjHmk-MhSr8npod9fyhKaF6iH64GfT8sX2GQ/IMG_9272.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("Name"),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text("\$201"),
                                  IconButton(
                                    padding: EdgeInsets.all(0),
                                    icon: Icon(
                                      Icons.favorite_border_rounded,
                                      color: Colors.red,
                                    ),
                                    onPressed: () {},
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      padding: EdgeInsets.all(primaryMargin),
                    ),
*
*
* */
