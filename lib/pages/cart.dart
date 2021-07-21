
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'homepage.dart';
class cart extends StatelessWidget {

  List<Product> _products = [
    Product(
      image: "assets/1.jpg",
      title: "Solid Men Mandarin Collar Dark Blue T-Shirt",
      price: 2,

    ),
    Product(
      image: "assets/2.jpg",
      title: "Casual Petal Sleeves Solid Women Maroon Top",
      price: 2,

    ),
    Product(
      image: "assets/3.jpg",
      title: "Solid Women Round Neck Green T-Shirt",
      price: 2,

    ),
    Product(
      image: "assets/4.jpg",
      title: "Casual Regular Sleeves Printed Women Blue Top",
      price: 2,

    ),
    Product(
      image: "assets/5.jpg",
      title: "Casual Regular Sleeves Solid Women Black Top",
      price: 2,

    ),
    Product(
      image: "assets/6.jpg",
      title: "Casual Slit Sleeves Printed Women Yellow Top",
      price: 2,

    ),

  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: ListView.builder(

        itemCount: _products.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Image.asset(_products[index].image),
              title: Text(this._products[index].title,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
              subtitle: Row(
                children: <Widget>[
                  Text(
                    '\$${this._products[index].price}',
                    style: TextStyle(
                        fontSize: 17, fontWeight: FontWeight.bold),
                  ),

                  Text(
                    ' x ',
                    style: TextStyle(
                        fontSize: 17, fontWeight: FontWeight.bold),
                  ),

                  Text(
                    '${1}',
                    style: TextStyle(
                        fontSize: 17, fontWeight: FontWeight.bold),
                  ),

                  Text(
                    ' = ',
                    style: TextStyle(
                        fontSize: 17, fontWeight: FontWeight.bold),
                  ),

                  Text(
                    '\$${(this._products[index].price)}',
                    style: TextStyle(
                        fontSize: 17, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              trailing: Column(
                children: <Widget>[
                  Icon(
                    Icons.arrow_drop_up,
                    size: 21,
                  ),

                  Text('${1}',
                      style: TextStyle(
                          fontSize: 11, fontWeight: FontWeight.bold)),

                  Icon(
                    Icons.arrow_drop_down,
                    size: 21,
                  )
                ],
              ),
            ),
          );
        },

      ),
      drawer: Drawer (
        child: Column
          (children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),


            child: Theme(
              data: Theme.of(context).copyWith(
                accentColor: Colors.purple,
              ),
              child: TextField(


                decoration: InputDecoration(
                    hintText: "Promo Code",
                    prefixIcon: Icon(Icons.search, size: 30,),
                    filled: true,
                    fillColor: Colors.grey[200],
                    contentPadding: EdgeInsets.all(20),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.grey[200])
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white)
                    )


                ),
              ),
            ),
          )
        ],
        ),
      ),

      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                'Total : \$500',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.redAccent),
              ),
            ),
            Expanded(
              child: RaisedButton(
                color: Colors.redAccent,
                onPressed: () {

                },
                child: Text('Checkout', style: TextStyle(color: Colors.white),),
              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: Text(''),
      title: Text('Items in Cart'),
      backgroundColor: Colors.redAccent,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ],
    );
  }


}


