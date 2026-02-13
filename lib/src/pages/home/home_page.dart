import 'package:firstapp/src/pages/configs/app_route.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print('index = $_selectedIndex' );
      switch(_selectedIndex){
        case 0:
          Navigator.pushNamed(context, AppRoute.homeRoute);
          break;
        case 1:
          Navigator.pushNamed(context, AppRoute.infoRoute);
          break;
        case 2:
          Navigator.pushNamed(context, AppRoute.upcomingMovieRoute);
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text('ThisApp Home', style: TextStyle(color: Colors.white)),
      ),
      drawer: CommonDrawer(),
      body: Column(
        children: [
          FlutterLogo(size: 150),
          Text(
            '\nMY FLUTTER DEV',
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Text(
            textAlign: TextAlign.justify,
            '\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage,',
            style: TextStyle(color: Colors.blue, fontSize: 18),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'INFO'),
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'MOVIE'),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class CommonDrawer extends StatelessWidget {
  const CommonDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              radius: 10,
              backgroundImage: AssetImage('assets/images/isme.jpeg'),
            ),
            decoration: BoxDecoration(color: Colors.black),
            accountName: Text(
              'Name: Thanesuan',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text(
              'Email: 664234001@parichat.skru.ac.th',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(color: Colors.black, Icons.home),
            title: Text('Homepage'),
            onTap: () {
              //print('Info');
              Navigator.pushNamed(context, AppRoute.homeRoute);
            },
          ),
          ListTile(
            leading: Icon(color: Colors.black, Icons.person),
            title: Text('My Info'),
            onTap: () {
              //print('Info');
              Navigator.pushNamed(context, AppRoute.infoRoute);
            },
          ),
          ListTile(
            leading: Icon(color: Colors.black, Icons.movie),
            title: Text('Movie'),
            onTap: () {
              //print('Movie');
              Navigator.pushNamed(context, AppRoute.upcomingMovieRoute);
            },
          ),
          Spacer(),
          ListTile(
            leading: Icon(color: Colors.black, Icons.logout),
            title: Text('Logout'),
          ),
        ],
      ),
    );
  }
} //end class
