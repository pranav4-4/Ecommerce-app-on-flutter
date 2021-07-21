import 'package:ecommerceui/pages/homepage.dart';
import 'package:ecommerceui/pages/tabicon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//flutter run -d chrome --web-port=8080 --web-hostname=127.0.0.1


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color _iconColor = Colors.grey;
     int _isselected=0;
  GlobalKey _bottomNavigationKey=GlobalKey();
  int _selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-commerce UI',
     theme: ThemeData(
        primarySwatch: Colors.blue// default value
      ),
      
        home:Scaffold(
          resizeToAvoidBottomInset: false,
          
          
      drawer: Drawer(),
      appBar: AppBar(
        
        toolbarHeight: 80,
        actions: <Widget>[
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,color: Colors.black,)),
          SizedBox(
            width: 10,
          ),
        ],
        
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("FlopKart",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
         leading:Builder(
          builder: (context) => InkWell(
            child: Icon(Icons.filter_list_sharp,color: Colors.black,),
            onTap: (){
              Scaffold.of(context).openDrawer();
              
            },
          ),
        ),
        // InkWell(
        //   onTap: ()=>Scaffold.of(context).openDrawer(),
        //   child: Icon(Icons.list),
        // ),
        
          
        
      ),
      floatingActionButton: FloatingActionButton(
        
        onPressed: (){},
        backgroundColor: Colors.blue[900],

        child: Icon(Icons.qr_code_scanner_sharp),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _builderBottomTab(),
      
     
      body: _buildPage(),
        
      
    ),
    );
   }
   _builderBottomTab(){
    return BottomAppBar(
      
      
      shape:  AutomaticNotchedShape(
          RoundedRectangleBorder(),
          StadiumBorder(
            side: BorderSide(

            ),
          ),
        ),
              
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:<Widget>[
          // IconButton(
                
          //       iconSize: 30.0,
          //       padding: EdgeInsets.only(left: 28.0),
          //       icon: Icon(Icons.home,color:_iconColor,),
          //       onPressed: () {
                  
          //           _iconColor=Colors.purple;
          //         setState(() {
                    
          //         });
          //       },
          //     ),
          //      IconButton(
                
          //       iconSize: 30.0,
          //       padding: EdgeInsets.only(left: 28.0),
          //       icon: Icon(Icons.home,color:_iconColor,),
          //       onPressed: () {
                  
          //           _iconColor=Colors.purple;
          //         setState(() {
                    
          //         });
          //       },
          //     ),

         Tabitems(icon:Icons.home,isselected: _isselected==0 ,onTap:(){
          setState(() {
             _isselected=0;
          });
         },),
         Tabitems(icon:Icons.list,isselected: _isselected==1 ,onTap: (){
           setState(() {
             
           _isselected=1;
           });
         },),
         SizedBox(
           width:20
       ),
         Tabitems(icon:Icons.shopping_bag,isselected: _isselected==2 ,onTap: (){
           setState(() {
             _isselected=2;
           });
         },),
         Tabitems(icon:Icons.account_circle_rounded,isselected: _isselected==3 ,onTap: (){
           setState(() {
             _isselected=3;
           });
         },),
         
         
         
         
         ]
        
      )
    );
   }
    _buildPage(){
      switch(_isselected){
        case 0: 
              print(_isselected);
              return Homepage();
        case 1: 
              print(_isselected);
              return Container(child: Text("List Page"),);
        case 2:
              print(_isselected);
             return Container(child: Text("Shopping Page"),);
        case 3:
              print(_isselected);
             return Container(child: Text("Profile Page"),);
        default:
             return Homepage();
        
        
      }

    }

   }

      