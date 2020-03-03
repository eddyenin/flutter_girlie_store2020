import 'package:flutter/material.dart';

class ItemDetails extends StatefulWidget {
  String itemName;
  String itemImage;
  double itemPrice;
  double itemRating;
  String itemSubName;

  ItemDetails({
    this.itemName,
    this.itemImage,
    this.itemPrice,
    this.itemRating,
    this.itemSubName,
  });
  @override
  _ItemDetailsState createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    var widget2 = widget;
    return Scaffold(
      appBar: AppBar(
        title: Text('Item Details'),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            height: 200.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(widget.itemImage),
                  fit: BoxFit.fitHeight,
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(120.0),
                  bottomLeft: Radius.circular(120.0),
                )),
          ),
          Container(
            height: 200.0,
            decoration: BoxDecoration(
                color: Colors.grey.withAlpha(50),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(120.0),
                  bottomLeft: Radius.circular(120.0),
                )),
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50.0,
                ),
                Card(
                  child: Container(
                    width: screenSize.width,
                    margin: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          widget.itemName,
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Item SubName',
                          style: TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(
                                  Icons.star,
                                  color: Colors.blue,
                                  size: 20.0,
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text("${widget.itemRating}")
                              ],
                            ),
                            Text(
                              "N${widget.itemPrice}",
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                    child: Container(
                  width: screenSize.width,
                  height: 150,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 5.0, right: 5.0),
                            height: 140.0,
                            width: 100.0,
                            child: Image.network(widget.itemImage),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5.0, right: 5.0),
                            height: 140.0,
                            width: 100.0,
                            decoration:
                                BoxDecoration(color: Colors.grey.withAlpha(50)),
                          )
                        ],
                      );
                    },
                  ),
                )),
                Card(
                  child: Container(
                    width: screenSize.width,
                    margin: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Description",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Item Description",
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    width: screenSize.width,
                    margin: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Colors",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        SizedBox(
                          height: 50.0,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: ChoiceChip(
                                  label: Text("color"),
                                  selected: false,
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Sizes",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        SizedBox(
                          height: 50.0,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: ChoiceChip(
                                  label: Text("sizes"),
                                  selected: false,
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Sizes",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            CircleAvatar(
                              child: Icon(Icons.remove),
                            ),
                            Text("0"),
                            CircleAvatar(
                              child: Icon(Icons.add),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.0,)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Stack(
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/cart');
            },
            child: Icon(Icons.shopping_cart),
          ),
          CircleAvatar(
            radius: 10.0,
            backgroundColor: Colors.red,
            child: Text(
              '0',
              style: TextStyle(fontSize: 10.0),
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Theme.of(context).primaryColor,
        elevation: 0.0,
        shape: CircularNotchedRectangle(),
        notchMargin: 5.0,
        child: Container(
          height: 50.0,
          decoration: BoxDecoration(color: Theme.of(context).primaryColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: (screenSize.width - 20) / 2,
                child: Text(
                  'ADD TO FAVORITES',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                width: (screenSize.width - 20) / 2,
                child: Text(
                  'ORDER NOW',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
