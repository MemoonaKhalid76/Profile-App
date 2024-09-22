import 'package:flutter/material.dart';

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
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
        title: Text('Profile'),
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Column(
        children: [
          _buildProfileHeader(),
          _buildQuoteCard(),
          _buildProgressCard(),
          _buildTabBarSection(),
          SizedBox(height: 20),
          _buildStatsSection(),
          Spacer(),
          _buildShareButton(),
        ],
      ),
    );
  }

  Widget _buildProfileHeader() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
                'https://via.placeholder.com/150'), // Placeholder image URL
          ),
          SizedBox(height: 10),
          Text(
            'Hi, Dear',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            'Joined Aug, 2024',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _buildQuoteCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'Quote of the day',
                style: TextStyle(
                    color: Colors.blue, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "With the new day comes new strength and new thoughts. Either you run the day or the day runs you." ,
                style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text('-Eleanor Roosevelt'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProgressCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Level',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text('220/300'),
                ],
              ),
              SizedBox(height: 10),
              LinearProgressIndicator(
                value: 220 / 300,
                backgroundColor: Colors.grey[300],
                color: Colors.blue,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('LV 4'),
                  Icon(Icons.directions_walk, color: Colors.blue),
                  Text('LV 5'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTabBarSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildTabButton('Stats', true),
          _buildTabButton('History', false),
          _buildTabButton('Edit', false),
        ],
      ),
    );
  }

  Widget _buildTabButton(String label, bool isSelected) {
    return TextButton(
      onPressed: () {},
      child: Text(
        label,
        style: TextStyle(
          fontSize: 16,
          color: isSelected ? Colors.blue : Colors.grey,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }

  Widget _buildStatsSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildStatItem('23', 'Completed Sessions'),
          _buildStatItem('94', 'Minutes Spent'),
          _buildStatItem('15 days', 'Longest Streak'),
        ],
      ),
    );
  }

  Widget _buildStatItem(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Text(label, textAlign: TextAlign.center),
      ],
    );
  }

  Widget _buildShareButton() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton.icon(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue, // Updated property
          padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
        ),
        icon: Icon(Icons.share),
        label: Text('Share My Stats'),
      ),
    );
  }
}
