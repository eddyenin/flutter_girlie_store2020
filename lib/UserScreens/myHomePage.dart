import 'package:flutter/material.dart';
import 'package:flutter_girlie_store/Tools/store.dart';
import 'package:flutter_girlie_store/UserScreens/itemDetails.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('girlies'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.favorite, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pushNamed('/favourites');
            },
          ),
          Stack(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.message, color: Colors.white),
                onPressed: () {
                  Navigator.of(context).pushNamed('/messages');
                },
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
          )
        ],
      ),
      body: Center(
            child: Column(
          children: <Widget>[
            Flexible(
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: storeItems.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  var itemDetails = ItemDetails(
                  itemImage:storeItems[index].itemImage,
                  itemName: storeItems[index].itemName,
                  itemPrice: storeItems[index].itemPrice,
                  itemRating: storeItems[index].itemRating,

                );
                  return itemDetails;
                }
                )
                );
              },
            
            child: Card(
              child: Stack(
                alignment: FractionalOffset.topLeft,
                children: <Widget>[
                  Stack(
                    alignment: FractionalOffset.bottomCenter,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fitWidth,
                                image: NetworkImage(
                                    storeItems[index].itemImage)
                                    )
                                    ),
                      ),
                      Container(
                        height: 35.0,
                        color: Colors.black.withAlpha(100),
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "${storeItems[index].itemName}",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  "N${storeItems[index].itemPrice}",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                    height: 20.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(topRight:Radius.circular(5.0),bottomRight: Radius.circular(5.0),),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                      Icon(Icons.star,color: Colors.blue, size: 20,),
                      Text("${storeItems[index].itemRating}",
                      style: TextStyle(
                        
                        color: Colors.white,
                      ),)
                    ],
                    ),
                  ),
                  IconButton(icon:Icon(Icons.favorite_border,color: Colors.black,), onPressed: null,)
                    ],
                  ),
                  
                ],
              ),
            ),
            );
          }),
            ),
          ],
        )),
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
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text('eddyenin@gmail.com'),
              accountName: Text('Edidiong Daniel'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person),
              ),
            ),
            ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.notifications),
                ),
                title: Text('Order Notifications'),
                onTap: () {
                  Navigator.of(context).pushNamed('/notifications');
                }),
            ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.history),
                ),
                title: Text('Order History'),
                onTap: () {
                  Navigator.of(context).pushNamed('/history');
                }),
            Divider(),
            ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                ),
                title: Text('Profile settings'),
                onTap: () {
                  Navigator.of(context).pushNamed('/profile');
                }),
            ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.home),
                ),
                title: Text('Delivery address'),
                onTap: () {
                  Navigator.of(context).pushNamed('/address');
                }),
            Divider(),
            ListTile(
                trailing: CircleAvatar(
                  child: Icon(Icons.help),
                ),
                title: Text('About us'),
                onTap: () {
                  Navigator.of(context).pushNamed('/about');
                }),
            ListTile(
                trailing: CircleAvatar(
                  child: Icon(Icons.exit_to_app),
                ),
                title: Text('Login'),
                onTap: () {
                  Navigator.of(context).pushNamed('/login');
                }),
          ],
        ),
      ),
    );
  }
}
