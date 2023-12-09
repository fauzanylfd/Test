import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            InkWell(
              onTap: () {
                // Implementasikan logika ketika pengaturan suara ditekan di sini
              },
              child: ListTile(
                leading: Icon(Icons.volume_up),
                title: Text('Sound'),
                trailing: Switch(
                  value: true, // Ganti dengan nilai sebenarnya
                  onChanged: (bool value) {
                    // Implementasikan logika perubahan nilai di sini
                  },
                ),
              ),
            ),
            InkWell(
              onTap: () {
                // Implementasikan logika ketika pengaturan kecerahan ditekan di sini
              },
              child: ListTile(
                leading: Icon(Icons.brightness_medium),
                title: Text('Brightness'),
                trailing: Switch(
                  value: false, // Ganti dengan nilai sebenarnya
                  onChanged: (bool value) {
                    // Implementasikan logika perubahan nilai di sini
                  },
                ),
              ),
            ),
            InkWell(
              onTap: () {
                // Implementasikan logika ketika pengaturan notifikasi ditekan di sini
              },
              child: ListTile(
                leading: Icon(Icons.notifications),
                title: Text('Notifications'),
                trailing: Switch(
                  value: true, // Ganti dengan nilai sebenarnya
                  onChanged: (bool value) {
                    // Implementasikan logika perubahan nilai di sini
                  },
                ),
              ),
            ),
          ],
        ).toList(),
      ),
    );
  }
}
