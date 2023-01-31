import 'package:automall/widgets/Addcarbutton.dart';
import 'package:automall/widgets/carcard.dart';
import 'package:automall/widgets/homecards.dart';
import 'package:automall/widgets/seeallbutton.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black26,
        child: ListView(
            children: [
                                                                //Search bar
              Padding(
                  padding: const EdgeInsets.fromLTRB(0,20,0,18),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 16),
                    margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: Container(
                        child: Row(
                          children: [
                            Icon(Icons.search, color: Colors.black45,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text("Search Products", style: TextStyle(color: Colors.black45, fontSize: 16),),
                            ),
                          ],
                        )
                    ),
                    height: 54,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ),

                                                                //My cars Text and add car button
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 14),
                child: Row(
                  children: [
                    Container(
                        child: Text(
                          "My Cars",
                          style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                    ),
                    Spacer(),
                    AddCarButton(),
                  ],
                ),
              ),

                                                                //My car cards
              Padding(
                padding: const EdgeInsets.fromLTRB(0,16,6,16),
                child: Container(child: CarCard()),
              ),
                                                                //Exclusive offers text and see all button
              Padding(
                padding: const EdgeInsets.symmetric(vertical:10,horizontal: 14),
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        "Exclusive offers",
                        style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                    ),
                    Spacer(),
                    //AddCarButton(),
                    SeeAllButton()
                  ],
                ),
              ),

                                                                //Product card = home cards
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0),
                child: Container(
                  child: HomeCard(),
                ),
              ),

                                                                //Best selling text and see all button
              Padding(
                padding: const EdgeInsets.symmetric(vertical:20,horizontal: 14),
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        "Best selling",
                        style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                    ),
                    Spacer(),
                    //AddCarButton(),
                    SeeAllButton()
                  ],
                ),
              ),

                                                                //product card = home cards
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0),
                child: Container(
                  child: HomeCard(),
                ),
              ),
            ],
        ),
      ),
    );
  }
}