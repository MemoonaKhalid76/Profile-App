import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green[900],
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                color: Colors.green[900],
              ),
              Positioned(
                top: 50,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('C:\Users\PMLS\OneDrive\Desktop\OIP.jpeg'),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Memoona Khalid',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '+921234567889',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              child: ListView(
                padding: EdgeInsets.all(20),
                children: [
                  ListTile(
                    leading: Icon(Icons.person, color: Colors.blue),
                    title: Text('My Profile'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.shopping_bag, color: Colors.green),
                    title: Text('My Orders'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.money, color: Colors.purple),
                    title: Text('Refund'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.lock, color: Colors.orange),
                    title: Text('Change Password'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.language, color: Colors.pink),
                    title: Text('Change Language'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}
