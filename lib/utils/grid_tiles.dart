import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyGridTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final Function detailTap;
  final Function likeButton;
  final String imgSrc =
      'https://st3.depositphotos.com/1008450/14559/i/1600/depositphotos_145599551-stock-photo-man-doing-shopping.jpg';

  MyGridTile({
    this.detailTap,
    this.itemName,
    this.itemPrice,
    this.likeButton,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: detailTap,
      customBorder:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(28.0)),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(28.0),
                child: Image.network(
                  imgSrc,
                ),
              ),
              Positioned(
                  right: 8,
                  bottom: 8,
                  child: InkWell(
                    onTap: likeButton,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        CupertinoIcons.heart,
                        color: Colors.black,
                        size: 18,
                      ),
                    ),
                  ))
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '$itemName',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '$itemPrice',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
