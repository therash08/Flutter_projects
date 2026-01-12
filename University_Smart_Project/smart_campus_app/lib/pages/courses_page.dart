import 'package:flutter/material.dart';
import '../models/course_model.dart';

class CoursesPage extends StatelessWidget {
  CoursesPage({super.key}); // ❌ const remove

  final List<Course> courses = [
    Course("CSE-1101", "Intro to Computing", "Basics of computing", 3),
    Course("CSE-1151", "Discrete Math", "Math for CS", 3),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: courses.length,
      itemBuilder: (_, i) {
        final c = courses[i];
        return Card(
          child: ListTile(
            title: Text("${c.code} - ${c.title}"),
            subtitle: Text(c.desc),
            trailing: Text("${c.credit} Credits"),
          ),
        );
      },
    );
  }
}
