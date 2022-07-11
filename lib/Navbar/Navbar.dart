import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Navbar extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) 
  {
    return LayoutBuilder(
      builder: (context,constraints)
      {
        if (constraints.maxWidth>1200)
         {
          return DesktopNavbar();
          }
          else if(constraints.maxWidth > 800 && constraints.maxWidth<1200)
          {
            return DesktopNavbar();
          }
          else
          {
            return MobileNavbar();
          }
        },
    );
  }
}


class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container
    (
      constraints: BoxConstraints(maxWidth: 1200),
      child: Row
      (
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>
        [
         Text("retroPortal Studio",
         style: TextStyle
         (
          fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30
         ),
         ),

         Row
         (
           children: <Widget>
           [
             Text("Home", style: TextStyle(color: Colors.white),),
             SizedBox(width: 30,),
             
             Text("About US", style: TextStyle(color: Colors.white),),
             SizedBox(width: 30,),

             Text("Portfolio", style: TextStyle(color: Colors.white),),
             SizedBox(width: 30,)

           ]
         ) 
        ],
      )
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}