import 'dart:math';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerceui/pages/detail.dart';
import 'package:ecommerceui/pages/tabicon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Homepage extends StatefulWidget {
  

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
   bool isFavourite;
  List<Product> _product=[
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
  List<IconData> _icons=[
    FontAwesomeIcons.shirtsinbulk,
    FontAwesomeIcons.shoePrints,
    FontAwesomeIcons.shoppingBag,
    FontAwesomeIcons.hatCowboy,
    FontAwesomeIcons.phone,
    FontAwesomeIcons.baseballBall,
    FontAwesomeIcons.watchmanMonitoring,
    FontAwesomeIcons.paintBrush,
    


  ];
  Widget _buildIcon(int index){
    return GestureDetector(
      onTap: (){
        setState(() {
          _selectedIndex=index;
        });
      },
          child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: index==_selectedIndex?Theme.of(context).accentColor:Colors.grey[200],
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(_icons[index], 
        size:25.0,
        color: index ==_selectedIndex?Colors.purple[100]:Colors.grey[800],
        )
        ),
    );
  }
   
     Color _iconColor = Colors.grey;
     int _isselected=0;
  GlobalKey _bottomNavigationKey=GlobalKey();
  int _selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical:10),
            child: _searchBox(),
             ),
             
            Container(
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _icons.length,
                itemBuilder:(BuildContext context,int index){
                  return GestureDetector(
      onTap: (){
        setState(() {
          _selectedIndex=index;
        });
      },
          child: Container(
            margin: EdgeInsets.all(10),
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: index==_selectedIndex?Theme.of(context).accentColor:Colors.grey[200],
          borderRadius: BorderRadius.circular(40.0),
        ),
        
        child: Icon(_icons[index], 
        size:30.0,
        color: index ==_selectedIndex?Colors.purple[100]:Colors.grey[800],
        )
        ),
        
    );



                } 
                ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  
                  Text("New Arrival",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  IconButton(onPressed:(){} ,
                   icon: Icon(Icons.arrow_forward,size: 30,)),
              
                ],
              ),
            ),
            Expanded(
              child: StaggeredGridView.countBuilder(
                physics: BouncingScrollPhysics(),
                crossAxisCount: 4,
                itemCount: _product.length,
                itemBuilder: (BuildContext context,int index){
                    return  _productItem(
                        title:_product[index].title,
                        image:_product[index].image,
                        price:_product[index].price.toString(),
                        isFavourite:Random().nextBool(),
                        index:index

                      
                    );
                }, 
                staggeredTileBuilder: (int index)=> new StaggeredTile.fit(2),
                mainAxisSpacing: 10 ,
                crossAxisSpacing:10
                ),

              ),

        ],
      )

    );
    }
    _searchBox(){
      return Container(
        
        margin: EdgeInsets.only(left:20,right: 20),

        
        child: Theme(
          data:Theme.of(context).copyWith(
              accentColor: Colors.blue[900],
          ),
                  child: TextField(
            
            
            decoration: InputDecoration(
              hintText: "Search Product",
              prefixIcon: Icon(Icons.search,size: 30,),
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
      );
    }
    Widget _productItem({String title,String image,String price,bool isFavourite,int index}){
      return GestureDetector(
        onTap: (){
             Navigator.of(context).push(MaterialPageRoute(builder:(context)=>DetailPage(
                         product:_product[index],
                         isfavour:isFavourite,)));
                    

        },
              child: Container(
          padding: EdgeInsets.all(14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color:Colors.grey.shade200,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: [
                  Stack(
                    children: [
                      Positioned.fill(child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 10,
                          width: 90,
                          decoration: BoxDecoration(
                            color:Colors.grey.shade200,
                            borderRadius: BorderRadius.all(
                              Radius.elliptical(100, 25),
                            )

                          ),
                        ),

                      )
                      ),
                      Center(
                        child:Image.asset(image,
                        width: 200,fit: BoxFit.cover,
                        ) ,
                        
                      )
                    ],
                  ),
                  Align(
                    alignment :Alignment.topRight,
                    child: Container(
                      height: 30,
                      width: 30,
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: isFavourite?Colors.pink.shade100:Colors.grey.shade200
                      ),
                      child: Icon(
                        Icons.favorite,
                        color: isFavourite?Colors.pink:Colors.grey,size: 20,
                      ),
                    ),

                  )
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Text(title,style:TextStyle(fontWeight:FontWeight.bold,fontSize: 15
              
              )
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children:<Widget>[
                  
                  Text("\$ $price",style: TextStyle(fontWeight:FontWeight.bold),)

                ]
              )
            ],
          ) ,
        ),
      );


    }
}
class Product{
  String title;
  double price;
  String image;
 
  Product({this.image,this.price,this.title});

}
      