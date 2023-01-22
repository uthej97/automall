import 'package:automall/Menu/mycars.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:automall/Menu/myorders.dart';
import 'package:automall/Menu/feedback.dart';
import 'package:automall/Menu/help.dart';
import 'package:automall/Menu/logout.dart';
import 'package:automall/navigation bar pages/Home.dart';
import 'package:automall/navigation bar pages/explore.dart';
import 'package:automall/navigation bar pages/cart.dart';
import 'package:automall/navigation bar pages/wishlist.dart';
import 'package:automall/navigation bar pages/profile.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectIndex = 0;
  void _navigateBottomBar( int index){
    setState(() {
      _selectIndex = index;
    });

  }

  final List<Widget> _navigationBarPages =[
    Home(),
    explore(),
    cart(),
    wishlist(),
    profile(),
  ];

  final List<Widget> _menu =[
    MyCars(),
    MyOrder(),
    feedback(),
    Help(),
    Logout(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Automall'),

    ),


      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          color: Colors.cyan[800],
          child: (ListView(
            children: [
              DrawerHeader(
                  child: Icon(
                    Icons.home,
                    size: 35,
                  ),
              ),
              ListTile(
                leading: Icon(Icons.person_outline_rounded),
                title: Text(
                  'profile',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => profile())
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.directions_car_outlined),
                title: Text(
                  'My cars',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MyCars())
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart_outlined),
                title: Text(
                  'My orders',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MyOrder())
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.favorite_border),
                title: Text(
                  'wishlist',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => wishlist())
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.help_outline),
                title: Text(
                  'Help',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Help())
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.feedback_outlined),
                title: Text(
                  'feedback',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => feedback())
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text(
                  'logout',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Logout())
                  );
                },
              )
            ],
          )
          ),
        ),
      ),


      endDrawer: Drawer(
        child: Container(
          color: Colors.cyan[800],
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: ListView(
            children: [
              DrawerHeader(
                  child: Icon(
                      Icons.settings,
                      size:30
                  ),
              ),

              ListTile(
                leading: Icon(Icons.person_outline_rounded),
                title: Text(
                  'Change password',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: (){
                 // change password page
                },
              ),
              ListTile(
                leading: Icon(Icons.person_outline_rounded),
                title: Text(
                  'Privacy policy',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: (){
                 // Privacy policy page
                },
              ),
            ],
          ),
        ),
      ),

      body: _navigationBarPages[_selectIndex],


      bottomNavigationBar: Container(

          color: Colors.cyan[800],
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: GNav(

              color: Colors.black,
              backgroundColor: Colors.cyan[800],
              activeColor: Colors.black,
              tabBackgroundColor: Colors.cyan[200],
              gap: 8,
              //currentIndex: (Index),
              onTabChange: (index) {
                _navigateBottomBar(index);
                print(index);
              },
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              tabs: const[
                GButton(
                    icon: Icons.home,
                    text: 'home'
                ),
                GButton(
                    icon: Icons.search,
                    text: 'explore'
                ),
                GButton(
                    icon: Icons.shopping_cart_outlined,
                    text: 'cart'
                ),
                GButton(
                    icon: Icons.favorite_border,
                    text: 'wish list'
                ),
                GButton(
                    icon: Icons.person_outline_rounded,
                    text: 'profile'
                )
              ],
            ),
          ),
      ),
    );
  }
}
