import 'package:flutter/material.dart';

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          // Profile Image and Info
          Stack(
            children: [
              // Background Curve
              Container(
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.purple[50],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
              ),
              // Profile Details
              Positioned(
                top: 30,
                left: 20,
                right: 20,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          'https://example.com/profile-image'), // Replace with your image URL
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Memona Khalid",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.location_on, color: Colors.grey, size: 16),
                        SizedBox(width: 5),
                        Text("Pakistan", style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),

          // About Section
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.favorite_border, color: Colors.pink),
                    SizedBox(width: 10),
                    Icon(Icons.message, color: Colors.blue),
                  ],
                ),
                SizedBox(height: 20),
                Text(

                      "It has roots in a piece of classical Latin.",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                  ),
                ),
                SizedBox(height: 15),
                Wrap(
                  spacing: 10,
                  children: [
                    Chip(
                      label: Text('#photography'),
                      backgroundColor: Colors.purple[100],
                    ),
                    Chip(
                      label: Text('#fashion'),
                      backgroundColor: Colors.purple[100],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),

      // Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
