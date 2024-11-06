import 'package:flutter/material.dart';
import 'package:flutter_application_5/profile_page.dart';

class AkunPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F3F8),
      appBar: AppBar(
        backgroundColor: Color(0xFFF3F3F8),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              child: GridView.count(
                crossAxisCount: 1,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/avatar.png', // Update path if needed
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            const Text(
              'Nama Lengkap: Desy Fitriana',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              'Asal Universitas: UTY',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 30),
            _buildOptionTile(context, 'Kelola Akun', onTap: () {
              // Navigate to ProfilePage
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            }),
            _buildOptionTile(context, 'Notifikasi'),
            _buildOptionTile(context, 'Privacy Policy'),
            _buildOptionTile(context, 'Terms of Service'),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionTile(BuildContext context, String title,
      {Function()? onTap}) {
    return ListTile(
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: onTap,
    );
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Profile'),
    ),
    body: Center(
      child: Text('This is your Profile Page!'),
    ),
  );
}
