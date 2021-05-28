import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pshar_khmer/config/routes/routes.dart';
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
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        child: Card(
                          elevation: 2,
                        ),
                        left: 0,
                        right: 0,
                        bottom: 0,
                        top: 70,
                      ),
                      Positioned(
                        child: Image.asset(
                          'assets/images/shose.png',
                          fit: BoxFit.contain,
                          height: 95,
                        ),
                        top: 15,
                        left: 60,
                      ),
                      Positioned(
                        top: 110,
                        child: Container(
                          child: Column(
                            children: [
                              Text("Name"),
                              Expanded(
                                child: Row(
                                  children: [
                                    Text("\$210"),
                                    IconButton(
                                        icon: Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                        ),
                                        onPressed: () {})
                                  ],
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                ),
                              )
                            ],
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                          margin: EdgeInsets.all(primaryMargin),
                          width: 170,
                          height: 50,
                        ),
                      )
                    ],
                  );
                },
              ),
            )

            // end column
          ],
        ),
      ),
    );
  }

  void toDetail(BuildContext context, String image) {
    Navigator.pushNamed(context, detailPage, arguments: image);
  }
}

// Card(
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.all(Radius.circular(
// 10,
// ))),
// color: Colors.amber,
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Hero(
// tag: "myImage",
// child: Image.asset(
// "assets/images/nike.png",
// fit: BoxFit.cover,
// ),
// ),
// Expanded(
// child: Container(
// margin: EdgeInsets.all(primaryMargin),
// child: Column(
// crossAxisAlignment:
// CrossAxisAlignment.start,
// children: [
// Text(
// "Name",
// style: TextStyle(color: colorAppBlack),
// ),
// SizedBox(
// height: primaryMargin,
// ),
// Row(
// mainAxisAlignment:
// MainAxisAlignment.spaceBetween,
// children: [
// Text("\$201"),
// Icon(
// Icons.favorite,
// color: colorAppLightGray,
// )
// ],
// )
// ],
// ),
// ),
// )
// ],
// ),
// ),

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
