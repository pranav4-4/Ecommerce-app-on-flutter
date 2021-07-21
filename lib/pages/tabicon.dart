import 'package:flutter/material.dart';

class Tabitems extends StatelessWidget {
  
 
  final IconData icon;
  final bool isselected;
  final Function onTap;
 

  Tabitems({ this.icon, this.isselected, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 20, 6, 12),


        
        
        
        child: Column(
          
          mainAxisSize: MainAxisSize.min,
          
          
          children: <Widget>[
            Icon(icon,color:isselected? Colors.blue[900]:Colors.grey,size: 40,),
            

          ],
        ),
        
      ),
      onTap:onTap,
    );
  }
}