import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key key}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final int _itemQuantity = 1;
  final String imgSrc =
      'https://st3.depositphotos.com/1008450/14559/i/1600/depositphotos_145599551-stock-photo-man-doing-shopping.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView(
          children: [
            Expanded(
                child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    imgSrc,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    left: 0,
                    top: 0,
                    child: IconButton(
                      icon: Icon(CupertinoIcons.arrow_left),
                      onPressed: () => print('Back Button'),
                    )),
                Positioned(
                    right: 0,
                    top: 0,
                    child: IconButton(
                      icon: Icon(CupertinoIcons.heart),
                      onPressed: () => print('Like Button'),
                    )),
                Positioned(
                  right: 16,
                  child: Container(
                    margin: EdgeInsets.only(top: 100),
                    width: 80,
                    height: 280,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22.0),
                    ),
                    child: ListView.builder(
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            height: 70,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 4, vertical: 6),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Image.network(
                                imgSrc,
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        }),
                  ),
                ),
              ],
            )),
            ListTile(
              leading: Text('Jean Jacket',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
              trailing: Text('\$109.00',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Color',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          _customeBadge(Colors.teal.shade200, true),
                          _customeBadge(Colors.green, false),
                          _customeBadge(Colors.brown.shade200, false),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Size',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          _customeSize('S', true),
                          _customeSize('M', false),
                          _customeSize('L', false),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Row(
                children: [
                  InkWell(
                      onTap: () => print('Item Removed'),
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        margin: EdgeInsets.all(8.0),
                        child: Icon(
                          CupertinoIcons.minus,
                          color: Colors.black,
                          size: 28,
                        ),
                        decoration: BoxDecoration(
                            // border: Border.all(color: Colors.grey),
                            color: Colors.grey.shade100,
                            shape: BoxShape.circle),
                      )),
                  Text('$_itemQuantity',
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  InkWell(
                      onTap: () => print('Item Added'),
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        margin: EdgeInsets.all(8.0),
                        child: Icon(
                          CupertinoIcons.plus,
                          color: Colors.black,
                          size: 28,
                        ),
                        decoration: BoxDecoration(
                            // border: Border.all(color: Colors.grey),
                            color: Colors.grey.shade100,
                            shape: BoxShape.circle),
                      )),
                  Spacer(),
                  Center(
                    child: Container(
                      height: 60,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(18.0)),
                      child: Center(
                        child: Text(
                          'Add to Cart',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _customeBadge(Color color, bool bool) {
    return bool
        ? Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Badge(
              badgeContent: Icon(
                Icons.check,
                color: Colors.white,
                size: 10,
              ),
              badgeColor: Colors.black,
              child: CircleAvatar(
                radius: 16,
                backgroundColor: color,
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              radius: 16,
              backgroundColor: color,
            ),
          );
  }

  _customeSize(String s, bool bool) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: InkWell(
        onTap: () => print('Size Button Size is : ' + s),
        child: CircleAvatar(
          radius: 16,
          backgroundColor: bool ? Colors.black : Colors.grey.shade200,
          child: Text(
            '$s',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: bool ? Colors.white : Colors.black),
          ),
        ),
      ),
    );
  }
}
