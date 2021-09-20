import 'package:badges/badges.dart';
import 'package:e_commerce_app/utils/grid_tiles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _name = 'Victoria';
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: NetworkImage(
                'https://i.pinimg.com/736x/2b/ff/a2/2bffa2ba2a43533ed855d46916f70dae.jpg'),
          ),
        ),
        title: Text(
          'Hi, $_name!',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
                onPressed: () {},
                icon: Badge(
                  badgeContent: Text(
                    '2',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w400),
                  ),
                  badgeColor: Colors.teal.shade200,
                  child: Icon(
                    CupertinoIcons.shopping_cart,
                    color: Colors.black,
                  ),
                )),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Find the best cloths for you',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(8.0)),
              child: TextField(
                enabled: true,
                autofocus: true,
                cursorColor: Colors.grey,
                style: TextStyle(fontSize: 20, color: Colors.grey),
                controller: _searchController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefix: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () => print(' Search Button'),
                        child: Icon(
                          CupertinoIcons.search,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    suffix: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () => print('Filter Search Button'),
                        child: Icon(CupertinoIcons.slider_horizontal_3),
                      ),
                    ),
                    hintText: 'Search',
                    hintStyle: TextStyle(fontSize: 20, color: Colors.grey)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: StaggeredGridView.countBuilder(
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 22,
                  crossAxisCount: 2,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return MyGridTile(
                      itemName: 'Name',
                      itemPrice: '\$156.0',
                      detailTap: () => print('Item Detail Taped'),
                      likeButton: () => print('Like Button'),
                    );
                  },
                  staggeredTileBuilder: (index) => StaggeredTile.fit(1)),
            )
          ],
        ),
      ),
    );
  }
}
