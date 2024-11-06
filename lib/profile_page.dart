import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            const SizedBox(height: 20),
            const Text(
              'Nama Lengkap: Desy',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              'Asal Universitas: Uty',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 20),
            _buildTextField(label: 'Nama Lengkap'),
            const SizedBox(height: 10),
            _buildTextField(label: 'Email'),
            const SizedBox(height: 10),
            _buildTextField(label: 'Nomor Telepon'),
            const SizedBox(height: 10),
            _buildTextField(label: 'Alamat'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Simpan Perubahan'),
            ),
          ],
        ),
      ),
    );
  }

  TextField _buildTextField({required String label}) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
      ),
    );
  }
}
