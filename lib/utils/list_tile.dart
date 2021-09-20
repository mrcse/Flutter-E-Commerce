import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final int itemQuantity;
  final String itemSize;
  final String itemThumnail;
  const MyListTile({
    Key key,
    @required this.itemName,
    @required this.itemPrice,
    @required this.itemQuantity,
    @required this.itemSize,
    @required this.itemThumnail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _query = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 16.0),
      child: Container(
        width: _query.width * 0.9,
        height: 100,
        child: Row(
          children: [
            Container(
              //alignment: Alignment.centerLeft,
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                image: DecorationImage(
                  image: NetworkImage(itemThumnail),
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
            ),
            SizedBox(
              width: _query.width * 0.04,
            ),
            Padding(
              padding: EdgeInsets.only(left: 14.0, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      '$itemName',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text('$itemPrice',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  ),
                  Row(
                    children: [
                      InkWell(
                          onTap: () => print('Item Removed'),
                          borderRadius: BorderRadius.circular(100),
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            child: Icon(
                              CupertinoIcons.minus,
                              color: Colors.black,
                              size: 20,
                            ),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                color: Colors.white,
                                shape: BoxShape.circle),
                          )),
                      Text('$itemQuantity',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold)),
                      InkWell(
                          onTap: () => print('Item Added'),
                          borderRadius: BorderRadius.circular(100),
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            child: Icon(
                              CupertinoIcons.plus,
                              color: Colors.black,
                              size: 20,
                            ),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                color: Colors.white,
                                shape: BoxShape.circle),
                          ))
                    ],
                  )
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Column(
                children: [
                  Text(
                    '$itemSize',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () => print('Item Deleted'),
                    borderRadius: BorderRadius.circular(100),
                    child: Icon(
                      CupertinoIcons.delete,
                      color: Colors.red,
                      size: 20,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
