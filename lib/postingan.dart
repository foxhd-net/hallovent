import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(
    home: Postingan(),
  ));
}

class Postingan extends StatefulWidget {
  @override
  _PostinganState createState() => _PostinganState();
}

class _PostinganState extends State<Postingan> {
  Map data;
  List feeds;

  Future getData() async {
    print('[log] call getData()');
    http.Response response =
        await http.get("http://lejendindustry.com/admin-panel/feed/api/list");
    data = json.decode(response.body);
    print('[log] data: ${data}');
    setState(() {
      feeds = data['data']['feeds'];
    });
    print('[log] ${feeds[0]}');
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffA8C7C8),
      body: ListView.builder(
          itemCount: feeds == null ? 0 : feeds.length,
          itemBuilder: (context, index) => Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: new BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10.0),
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
//                                      feeds[index]['user']['profile_image']
                                      'https://images.unsplash.com/photo-1552933529-e359b2477252?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'
                                  )
                              ),
                            )),
                        new SizedBox(
                          width: 10.0,
                        ),
                        new Text(
                          //feeds[index]['user']['username'],
                          'text username',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: new Card(
                        elevation: 0.0,
                        color: Color(0xffA8C7C8),
                        child: new Image.network(feeds[index]['image_url'])),
                  ),
                  new Info(feeds[index]['date'], feeds[index]['location_name']),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Caption(feeds[index]['caption']),
                  ),
                ],
              )),
    );
  }
}

class Info extends StatefulWidget {
  Info(this.date, this.locationname);

  final String date;
  final String locationname;

  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 2.0),
      child: new Row(
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Icon(Icons.date_range, size: 30.0, color: Colors.black),
              new Text(
                widget.date,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          new Padding(
            padding: new EdgeInsets.fromLTRB(100.0, 0.0, 10.0, 0.0),
            child: new Row(
              children: <Widget>[
                new Icon(Icons.location_on, size: 30.0, color: Colors.black),
                new Text(widget.locationname,
                    style: new TextStyle(fontWeight: FontWeight.bold))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Caption extends StatefulWidget {
  Caption(this.caption);

  final String caption;

  @override
  _CaptionState createState() => _CaptionState();
}

class _CaptionState extends State<Caption> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Card(
        elevation: 0.0,
        color: Color(0xffA8C7C8),
        child: new Text(widget.caption,
            style: new TextStyle(fontSize: 14.0), textAlign: TextAlign.justify),
      ),
    );
  }
}
