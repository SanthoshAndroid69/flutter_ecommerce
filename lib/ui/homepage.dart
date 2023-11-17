

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void incrementValue() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Design Practice",
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text('Settings')));
              },
              icon: const Icon(Icons.settings)),
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('Share')));
            },
            icon: const Icon(Icons.share),
            color: Colors.blue,
          )
        ],
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12))),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
            children: <Widget>[
              CarouselSlider(
                  items: [
                    Container(
                      margin: const EdgeInsets.all(4.0),
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/sunset.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      margin: const EdgeInsets.all(4.0),
                      decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/sunset.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      margin: const EdgeInsets.all(4.0),

                      decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/sunset.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      margin: const EdgeInsets.all(4.0),
                      decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/sunset.jpg'),
                              fit: BoxFit.cover

                          )),
                    )
                  ],
                  options: CarouselOptions(
                      aspectRatio: 16 / 9,
                      enableInfiniteScroll: true,
                      autoPlay: true,
                      height: 180,
                      autoPlayInterval: const Duration(seconds: 16),
                      enlargeCenterPage: true,
                      )),
              const Text(
                "Number of Hits:",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                '$count',
                style: const TextStyle(color: Colors.black, fontSize: 24),
              )
            ]),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: <Widget>[
            DrawerHeader(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.inversePrimary),
                child: const Text(
                  'Drawer Header',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                )),
            ListTile(
              title: const Text('Home'),
              leading: const Icon(Icons.home),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Report'),
              leading: const Icon(Icons.report),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Calculator'),
              leading: const Icon(Icons.calculate),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Rate this App'),
              leading: const Icon(Icons.star_rate),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Share'),
              leading: const Icon(Icons.share),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Theme.of(context).colorScheme.inversePrimary,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.report), label: 'Report'),
            BottomNavigationBarItem(
                icon: Icon(Icons.calculate), label: 'Calculator'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: 'Profile'),
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementValue,
        elevation: 10.0,
        backgroundColor: Theme.of(context).colorScheme.surfaceTint,
        child: const Icon(Icons.add),
      ),
    );
  }
}
