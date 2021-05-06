import 'package:flutter/material.dart';
import 'package:pshar_khmer/constants/app_constants.dart';
import 'package:pshar_khmer/widgets/widgets.dart';

class HomeContainerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
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
              height: screenSize.height * 0.05,
            ),
            // list
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 5,
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.network(
                            'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/24287340-811b-4118-9012-ce61d89d6bb3/react-miler-2-running-shoe-TbrmSM.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(primaryMargin),
                          child: Column(
                            children: [
                              Text("name"),
                              Row(
                                children: [
                                  Text('\$210'),
                                  IconButton(
                                      icon: Icon(Icons.favorite_rounded),
                                      onPressed: () {})
                                ],
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                              )
                            ],
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                        )
                      ],
                    ),
                  );
                },
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
