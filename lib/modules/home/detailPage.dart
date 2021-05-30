import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pshar_khmer/config/themes/light_theme.dart';
import 'package:pshar_khmer/constants/app_constants.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String image = ModalRoute.of(context).settings.arguments;

    List<String> _imgList = [
      'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
      'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
      'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
      'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
    ];

    print("image are $image");
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.fromLTRB(
              primaryMargin, primaryMargin, primaryMargin, 0),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Stack(
                      children: [
                        imageSlider(_imgList),
                        Container(
                          margin: EdgeInsets.all(primaryMargin),
                          child: AppBar(
                            elevation: 1,
                            iconTheme: IconThemeData(color: colorAppWhite),
                            actions: [
                              IconButton(
                                icon: Icon(
                                  Icons.share_rounded,
                                  color: colorAppWhite,
                                ),
                                onPressed: () {},
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(primaryMargin)),
                      child: Container(
                        width: size.width,
                        padding: EdgeInsets.all(primaryMargin),
                        child: titleContent("Product's name", ""),
                      ),
                    ),
                    SizedBox(
                      height: primaryMargin,
                    ),
                    Card(
                      child: Column(
                        children: [
                          Container(
                              width: size.width,
                              padding: EdgeInsets.all(primaryMargin),
                              child: titleContentCard("Description",
                                  "Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt. Vivamus suscipit tortor eget felis porttitor volutpat. Vivamus suscipit tortor eget felis porttitor volutpat. ")),
                          Divider(),
                          Container(
                              width: size.width,
                              padding: EdgeInsets.all(primaryMargin),
                              child: titleContentCard("Free Delivery & returns",
                                  "Cras ultricies ligula sed magna dictum porta. Sed porttitor lectus nibh. Sed porttitor lectus nibh. ")),
                          Divider(),
                          Container(
                              width: size.width,
                              padding: EdgeInsets.all(primaryMargin),
                              child: titleContentCard("Size guide",
                                  "Sed porttitor lectus nibh. Sed porttitor lectus nibh. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. ")),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: size.width,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Add To Card"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Column titleContentCard(String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: titleStyle),
        SizedBox(
          height: primaryMargin / 2,
        ),
        Text(content)
      ],
    );
  }

  Column titleContent(String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: titleStyle),
        SizedBox(
          height: primaryMargin / 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.star_half_outlined),
                Icon(Icons.star_half_outlined),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
              ],
            ),
            SizedBox(
              width: primaryMargin / 2,
            ),
            Text("4.9"),
            Spacer(),
            Text(
              "\$270",
              style: titleStyle,
            )
          ],
        )
      ],
    );
  }

  Column imageSlider(List<String> _imgList) {
    return Column(
      children: [
        // image slider
        Container(
          margin: EdgeInsets.all(primaryMargin),
          child: CarouselSlider.builder(
            itemCount: _imgList.length,
            itemBuilder: (context, index, realIdx) {
              return Container(
                color: Colors.grey,
                child: Image.network(_imgList[index]),
              );
            },
            options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                scrollPhysics: BouncingScrollPhysics(),
                onPageChanged: (index, reason) {
                  setState(() {
                    print("reason $reason");
                    _currentIndex = index;
                  });
                }),
          ),
        ),
        // imge indicator
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _imgList.map((e) {
            int imageIndex = _imgList.indexOf(e);
            return Container(
              width: _currentIndex == imageIndex ? 16.0 : 12.0,
              height: _currentIndex == imageIndex ? 16.0 : 12.0,
              margin: EdgeInsets.only(
                top: primaryMargin,
                left: primaryMargin,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == imageIndex
                    ? colorAppPrimaryColorBrown
                    : colorAppGray,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
