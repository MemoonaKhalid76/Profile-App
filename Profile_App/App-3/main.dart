import 'package:flutter/material.dart';

void main() {
  runApp(TopprApp());
}

class TopprApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toppr'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            // Profile Section
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      'https://example.com/profile-image'), // Placeholder for profile image URL
                ),
                SizedBox(width: 10),
                Text(
                  'Memoona Khalid',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 20),

            // Subjects Grid
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: subjects.length,
                itemBuilder: (context, index) {
                  return SubjectCard(subject: subjects[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Model for Subjects
class Subject {
  final String name;
  final int videos;
  final int topics;
  final IconData icon;

  Subject(this.name, this.videos, this.topics, this.icon);
}

// Data for subjects
final List<Subject> subjects = [
  Subject("Science", 25, 345, Icons.science),
  Subject("Mathematics", 25, 385, Icons.calculate),
  Subject("English", 25, 200, Icons.language),
  Subject("Logical Reasoning", 25, 150, Icons.psychology),
  Subject("History", 25, 180, Icons.history),
  Subject("Civic", 25, 170, Icons.gavel),
];

// Widget for each Subject card
class SubjectCard extends StatelessWidget {
  final Subject subject;

  const SubjectCard({Key? key, required this.subject}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(subject.icon, size: 40, color: Colors.blueAccent),
            SizedBox(height: 10),
            Text(
              subject.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 5),
            Text("${subject.videos} Videos, ${subject.topics} Topics",
                style: TextStyle(fontSize: 12)),
          ],
        ),
      ),
    );
  }
}
