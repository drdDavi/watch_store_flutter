import 'package:flutter/material.dart';
import 'package:watch_store_flutter/components/expanded_section.dart';
import 'package:watch_store_flutter/data/app_data.dart';

class ShoppingPage extends StatefulWidget {
  ShoppingPage({Key key}) : super(key: key);

  @override
  _ShoppingPageState createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: -125,
            right: -225,
            height: 500,
            width: 500,
            child: Container(
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/background.png'))),
            ),
          ),
          ListView(
            children: <Widget>[
              SizedBox(height: 20),
              Stack(
                children: <Widget>[
                  Positioned(
                    top: -50,
                    right: -165,
                    height: 500,
                    width: 500,
                    child: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/watch_main.png')))),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          'CHIMERA \n 46',
                          style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          '£4,795.00',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(color: Color(0xFF434145), borderRadius: BorderRadius.circular(50)),
                            ),
                            SizedBox(width: 15),
                            Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(color: Color(0xFFA1AFB3), borderRadius: BorderRadius.circular(50)),
                            ),
                            SizedBox(width: 15),
                            Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(color: Color(0xFF8D7475), borderRadius: BorderRadius.circular(50)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40),
                      for (int i = 0; i < AppData.info.length; i++)
                        Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(alignment: Alignment.centerLeft, width: 35, child: Image.asset(AppData.info[i].imageUrl)),
                                  Text(
                                    AppData.info[i].title,
                                    style: TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(width: 7),
                                  Text(AppData.info[i].subTitle)
                                ],
                              ),
                            ),
                            SizedBox(height: 10)
                          ],
                        ),
                      SizedBox(height: 45)
                    ],
                  ),
                ],
              ),
              GestureDetector(
                onTap: () => print('Buy Now Press'),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  alignment: Alignment.center,
                  height: 58,
                  decoration: BoxDecoration(color: Color(0xFF767AA2), borderRadius: BorderRadius.circular(30)),
                  child: Text(
                    'BUY NOW',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 35),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                color: Color(0xFFD8D8D8),
                child: Divider(
                  height: .5,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 8),
                          child: Text(
                            'TECHNICAL DETAILS',
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            isExpanded = !isExpanded;
                            setState(() {});
                          },
                          icon: Icon(Icons.add),
                        )
                      ],
                    ),
                    if (isExpanded) SizedBox(height: 20),
                    ExpandedSection(
                      isExpanded: isExpanded,
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            for (int i = 0; i < AppData.expandedData.length; i++)
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    AppData.expandedData[i].title,
                                    style: TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(height: 10),
                                  Text(AppData.expandedData[i].subtitle),
                                  SizedBox(height: 20),
                                ],
                              )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                color: Color(0xFFD8D8D8),
                child: Divider(
                  height: .5,
                ),
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.only(left: 24),
                child: Text(
                  'SIMILAR PRODUCTS',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    for (int i = 0; i < AppData.watches.length; i++)
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: <Widget>[
                            Container(
                                height: 120,
                                child: Image.asset(
                                  AppData.watches[i].imageUrl,
                                )),
                            Container(
                              child: Text(
                                AppData.watches[i].title,
                                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xFF141313)),
                              ),
                            ),
                            SizedBox(height: 3),
                            Container(
                              child: Text(
                                AppData.watches[i].subTitle,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
