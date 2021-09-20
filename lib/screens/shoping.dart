import 'package:badges/badges.dart';
import 'package:e_commerce_app/utils/list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Shoping extends StatefulWidget {
  const Shoping({Key key}) : super(key: key);

  @override
  _ShopingState createState() => _ShopingState();
}

class _ShopingState extends State<Shoping> {
  final String _title = 'Shopping Bag';
  TextEditingController _promoCodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: () => print('Back Press'),
            icon: Icon(CupertinoIcons.arrow_left),
            color: Colors.black,
          ),
        ),
        title: Text(
          '$_title',
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
        centerTitle: true,
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
      body: Column(
        children: [
          // SizedBox(
          //   height: 24.0,
          // ),
          Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return MyListTile(
                      itemName: 'Name',
                      itemPrice: '\$500',
                      itemQuantity: 5,
                      itemSize: 'L',
                      itemThumnail:
                          'https://i.pinimg.com/736x/82/c1/23/82c12307daf71cbe43fcd7fdf487b3dd.jpg',
                    );
                  })),
          Container(
            padding: const EdgeInsets.only(left: 18.0),
            margin: const EdgeInsets.symmetric(horizontal: 24),
            height: 60,
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(8.0)),
            child: TextField(
              enabled: true,
              autofocus: true,
              cursorColor: Colors.grey,
              style: TextStyle(fontSize: 18, color: Colors.grey),
              controller: _promoCodeController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  suffix: InkWell(
                    child: Container(
                      margin: const EdgeInsets.only(top: 22),
                      width: 80,
                      child: Center(
                        child: Text(
                          'Apply',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8.0)),
                    ),
                  ),
                  hintText: 'Promo Code',
                  hintStyle: TextStyle(fontSize: 18, color: Colors.grey)),
            ),
          ),
          _cutomButton('Sub Total', '\$367.00'),
          _cutomButton('Shipping', '\$4.000'),
          _cutomButton('Sub Total', '\$371.00', isTotal: true),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              height: 60,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(18.0)),
              child: Center(
                child: Text(
                  'Proceed to Checkout',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  _cutomButton(String s, String t, {bool isTotal = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ListTile(
        title: Text('- - - - - - - - - - -',
            style: TextStyle(fontSize: 18, color: Colors.grey)),
        leading: Text('$s', style: TextStyle(fontSize: 18, color: Colors.grey)),
        trailing: Text('$t',
            style: TextStyle(
                fontSize: 22,
                color: isTotal ? Colors.red.shade400 : Colors.black,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
