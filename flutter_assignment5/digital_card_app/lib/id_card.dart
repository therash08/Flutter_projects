import 'package:flutter/material.dart';
import 'info_tile.dart';

class IdCard extends StatelessWidget {
  const IdCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Md. Mahdi Hossain',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            Text(
              'Dept. of CSE',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(height: 10),
            Divider(
              height: 20,
              thickness: 1,
              color: Colors.teal,
              indent: 20,
              endIndent: 20,
            ),
            InfoTile(icon: Icons.badge, text: 'ID: 12345678'),
            InfoTile(icon: Icons.email, text: 'mahdi@example.com'),
            InfoTile(icon: Icons.phone, text: '+880 1712 345678'),
          ],
        ),
      ),
    );
  }
}
