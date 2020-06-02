import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HotPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HotPageState();
  }
}

class HotPageState extends State<HotPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 88,
          child: Row(
            children: <Widget>[
              Text(
                '深圳',
                style: TextStyle(fontSize: 16),
              ),
              Icon(Icons.arrow_drop_down),
              Expanded(
                flex: 1,
                child: TextField(
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                    hintText: '\uE8b6 电影 / 电视剧 / 影人',
                    hintStyle: TextStyle(fontFamily: 'MaterialIcons', fontSize: 16),
                    contentPadding: EdgeInsets.only(top: 8, bottom: 8),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    filled: true,
                    fillColor: Colors.black12
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: DefaultTabController(
            length: 2,
            child: Column(
              children: <Widget>[
                Container(
                  constraints: BoxConstraints.expand(height: 50),
                  child: TabBar(
                    unselectedLabelColor: Colors.black12,
                    labelColor: Colors.black87,
                    indicatorColor: Colors.black87,
                    tabs: <Widget>[Tab(text: '正在热映'), Tab(text: '即将上映',)],
                  ),
                ),
                Expanded(
                  child: Container(
                    child: TabBarView(
                      children: <Widget>[
                        Center(
                          child: Text('正在热映'),
                        ),
                        Center(
                          child: Text('即将上映'),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}