import 'package:flutter/material.dart';


// display Car card
class CarCard extends StatelessWidget {
  const CarCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: (
       Row(
         children: [
           for(int i=1; i<10 ; i++)
           Container(
             margin: EdgeInsets.symmetric(horizontal: 10),
             padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
             decoration: BoxDecoration(
               color: Colors.cyan[800],
               borderRadius: BorderRadius.circular(10)
             ),
             child: Row(
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Text("Car Name", style: TextStyle(color: Colors.white)),
                 Text("Model", style: TextStyle(color: Colors.white)),
               ],
             ),
           ),
         ],
       )
      ),
    );
  }
}


//Add car button



