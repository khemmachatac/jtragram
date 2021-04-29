import 'package:clone_ig_app/post_detail_page.dart';
import 'package:flutter/material.dart';

class FeedsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FeedsPageState();
  }
}

class _FeedsPageState extends State<FeedsPage> {
  final List<String> stories = [
    'https://picsum.photos/id/237/200/300',
    'https://picsum.photos/id/238/200/300',
    'https://picsum.photos/id/239/200/300',
    'https://picsum.photos/id/240/200/300',
    'https://picsum.photos/id/241/200/300',
  ];

  final List<String> items = [
    'https://picsum.photos/id/236/200/300',
    'https://picsum.photos/id/235/200/300',
    'https://picsum.photos/id/234/200/300',
    'https://picsum.photos/id/233/200/300',
    'https://picsum.photos/id/232/200/300',
    'https://picsum.photos/id/231/200/300',
    'https://picsum.photos/id/230/200/300',
    'https://picsum.photos/id/229/200/300',
    'https://picsum.photos/id/228/200/300',
    'https://picsum.photos/id/227/200/300',
    'https://picsum.photos/id/221/200/300',
    'https://picsum.photos/id/225/200/300',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              height: 112,
              child: ListView.builder(
                padding: EdgeInsets.only(left: 16),
                scrollDirection: Axis.horizontal,
                itemCount: stories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      bottom: 16,
                      top: 16,
                      right: 16,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network(
                        stories[index],
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Divider(thickness: 1),
          ),
          SliverList(
            delegate: SliverChildListDelegate(items.map((item) {
              return Card(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return PostDetailPage(url: item);
                        },
                      ),
                    );
                  },
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          child: Row(
                            children: [
                              CircleAvatar(
                                child: Text('J'),
                              ),
                              SizedBox(width: 16),
                              Text(
                                "Username",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              Icon(Icons.spa),
                            ],
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                        ),
                        Hero(
                          tag: 'dash',
                          child: Image.network(
                            item,
                            height: 250,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.favorite),
                              SizedBox(width: 16),
                              Icon(Icons.comment_bank),
                              SizedBox(width: 16),
                              Icon(Icons.send),
                              Spacer(),
                              Icon(Icons.bookmark),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16,
                            right: 16,
                            bottom: 16,
                            top: 8,
                          ),
                          child: RichText(
                            text: TextSpan(
                              text: 'Like by ',
                              style: TextStyle(color: Colors.black),
                              children: [
                                TextSpan(
                                  text: 'Johnny English',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: ' and ',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Captain America',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }).toList()),
          ),
        ],
      ),
    );
  }
}
