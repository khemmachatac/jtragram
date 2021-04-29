import 'package:flutter/material.dart';

class PostDetailPage extends StatefulWidget {
  final String url;

  PostDetailPage({@required this.url});

  @override
  State<StatefulWidget> createState() {
    return _PostDetailPageState();
  }
}

class _PostDetailPageState extends State<PostDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Detail'),
        brightness: Brightness.dark,
        backgroundColor: Colors.orange,
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        color: Colors.black,
        child: Hero(
          tag: 'dash',
          child: SizedBox(
            child: Image.network(
              widget.url,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
