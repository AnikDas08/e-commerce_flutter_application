import 'package:flutter/material.dart';
import 'package:flutterecommerce/widget/carousole_slider.dart';
import 'package:flutterecommerce/widget/category/category_show.dart';
import 'package:flutterecommerce/widget/nowheresearch.dart';
import 'package:flutterecommerce/widget/product/productfetch.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imageList = [
    "images/slider1.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.red),
              child: Text(
                "Menu",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // TODO: handle Home tap
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.admin_panel_settings),
              title: Text('Settings'),
              onTap: () {
                // TODO: handle Settings tap
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_emergency),
              title: Text('About'),
              onTap: () {
                // TODO: handle About tap
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45),
        child: AppBar(
          title: Text("Data show"),
          backgroundColor: Colors.deepOrangeAccent,
        ),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            SearchBox(),
            CarouselSliderWidget(imageList: imageList),
            CategorySection(),
            Productfetch()
          ],
        ),
      ),

    );
  }
}



