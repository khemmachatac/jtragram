import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProfilePageState();
  }
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: _header(),
          ),
          _gallery(),
        ],
      ),
    );
  }

  Widget _header() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ).copyWith(bottom: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 40,
                child: Text('J'),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            '1,042',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Posts'),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '1,214',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Followers'),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '1,696',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Following'),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 16),
          Text(
            'Khemmachat Thongkhum',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 4),
          Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s'),
          SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.orange,
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Follow',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    side: MaterialStateProperty.all(
                      BorderSide(
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Message',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Divider(thickness: 1, height: 1),
        ],
      ),
    );
  }

  Widget _gallery() {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: MediaQuery.of(context).size.width / 3,
        mainAxisSpacing: 1,
        crossAxisSpacing: 1,
        childAspectRatio: 1.0,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            color: Colors.orange[100 * (index % 9)],
          );
        },
        childCount: 20,
      ),
    );
  }
}
