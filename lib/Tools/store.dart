import 'package:flutter/material.dart';


class Store{
 String itemName;
 double itemPrice;
 double itemRating;
 String itemImage;


 Store.items({
  this.itemName,
  this.itemPrice,
  this.itemRating,
  this.itemImage
});

} 
  List<Store>storeItems = [
    Store.items(
    itemName:"Pink can",
    itemImage: "https://bit.ly/2T2kCcC",
    itemPrice: 2500.00,
    itemRating: 0.0
  ),
     Store.items(
    itemName:"Black can",
    itemImage: "https://bit.ly/2HLtIoF",
    itemPrice: 1800.00,
    itemRating: 0.0
  ),
     Store.items(
    itemName:"Blue can",
    itemImage: "https://bit.ly/2HIB2Bt",
    itemPrice: 2800.00,
    itemRating: 0.0
  ),
     Store.items(
    itemName:"Purple can",
    itemImage: "https://bit.ly/2wBoGZL",
    itemPrice: 1200.00,
    itemRating: 0.0
  ),
     Store.items(
    itemName:"White can",
    itemImage: "https://bit.ly/3bUVWeA",
    itemPrice: 1000.00,
    itemRating: 0.0
  )
];