import 'package:ecommerceui/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'cart.dart';
class DetailPage extends StatefulWidget {
  
  final Product product;
   bool isfavour=true;

  DetailPage( {this.isfavour,this.product});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
   int item=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
              child: Stack(
        children: <Widget>[
          // The containers in the background
          Column(
            children: <Widget>[
              Expanded(
                flex: 6,
                child:  Container(


                  child: Image.asset(widget.product.image,fit: BoxFit.cover,),
                ),
              ),
              Expanded(
                flex:3,
                child:  Container(

                  color: Colors.white,
                ),
              )
            ],
          ),
        
          Padding(
            padding: const EdgeInsets.symmetric(vertical:20),
                      child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                 IconButton(
                   onPressed: (){
                       Navigator.pop(context);
                     },
                      icon:Icon(Icons.arrow_back)
                     ),
                     Container(
                       child: Row(
                         children: <Widget>[
                           Container(
                           height: 30,
                           width: 30,
                          padding: EdgeInsets.all(6),
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(50),
                             color: widget.isfavour?Colors.pink.shade100:Colors.grey.shade200
                           ),
                           
                           child: Icon(
                             Icons.favorite,
                             color: widget.isfavour?Colors.pink:Colors.grey,size: 20,
                           ),
                         ),
                         SizedBox(width: 20),
                           IconButton(
                               onPressed: (){
                                 Navigator.of(context).push(MaterialPageRoute(builder:(context)=>cart(
                                   )));
                               },
                               icon:Icon(Icons.shopping_cart)
                           ),

                         SizedBox(width: 10),

                     

              ],
            ),
            )
              
              ]
        ),
          ),
           
          

           Container(
            
            padding: new EdgeInsets.only(
                top: MediaQuery.of(context).size.height * .58,
            ),
            child: new Container(
              height: 400.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft:Radius.circular(30),topRight: Radius.circular(30)),
              color: Colors.grey[300],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical:35,horizontal: 10),
                              child: Column(
                                children: <Widget>[
                                                               Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: (MediaQuery.of(context).size.width)/2+40,
                      height:70,
                      color: Colors.grey[300],

                      child: Text(widget.product.title ,style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20),)),
                    Text("\$${widget.product.price.toString()}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                     

                  ],
                ),
                SizedBox(height:20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          height: 60,
                          width: 80,
                          decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color:Colors.grey[400])

                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left:10,top: 10),
                                                      child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                             // mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                
                                Text("Size",style: TextStyle(color: Colors.grey[900]),),
                                SizedBox(height: 4,),
                                Text("Large",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                            height: 10,
                        ),
                        Container(
                          height: 60,
                          width: 80,
                          decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color:Colors.grey[400])

                          ),
                          child:  Padding(
                            padding: const EdgeInsets.only(left:10,top: 10),
                                                      child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                             // mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                
                                Text("Color",style: TextStyle(color: Colors.grey[900]),),
                                SizedBox(height: 4),
                                Text("Red",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                        ),
                      ]
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Container(
                          height: 60,
                          decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color:Colors.grey[400])

                          ),
                         
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              IconButton(
                                onPressed:(){
                                  if(item>0){

                                  setState(() {
                                    item--;
                                    
                                  });
                                  }


                              },
                              icon: Icon(FontAwesomeIcons.minus,size: 20,color: Colors.grey,),
                              ),
                              Text(item.toString(),style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                               IconButton(
                                onPressed:(){
                                  if(item<6){

                                  setState(() {
                                    item++;
                                    
                                  });
                                  }


                              },
                              icon: Icon(FontAwesomeIcons.plus,size: 20,color: Colors.grey,),
                              ),

                            ],
                          ),
                        ),
                        SizedBox(
                            height: 10,
                        ),
                        Container(
                          height: 60,
                          width: 200,
                         
                          
                          decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Colors.grey[400])

                          ),
                           child:  Padding(
                             padding: const EdgeInsets.only(left:10,top: 10),
                                                       child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: <Widget>[
                                
                                 Text("Composition",style: TextStyle(color: Colors.grey[900]),),
                                 SizedBox(height: 4,),
                                 Text("Silk Bamboo",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                               ],
                             ),
                           ),
                        )
                            
                          ],
                        )
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 80,
                        height: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.blue[900],
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.add_box_outlined,size: 35,),
                              SizedBox(height: 10,),
                              Text("Add",style: TextStyle(fontSize:20,fontWeight:FontWeight.bold),)

                            ],
                          ),
                        ),
                      )


                  ],
                )
        ]
                              ),
              ),
              
            ),
          ),
         Container(
          alignment: Alignment.center,
          padding: new EdgeInsets.only(
              top: MediaQuery.of(context).size.height-730,
              right: 60.0,
              left: 60.0),
          child: new Container(
            height: 80.0,
            width: MediaQuery.of(context).size.width,
            color: Colors.red,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("sgsd"),
                Text("sgsd"),
                Text("sgsd"),
              ],
              

            ) ,
          ),
        )
        ],
    ),
      )


    );
  }
}
    
    
    