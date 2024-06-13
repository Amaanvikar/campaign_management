import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyDashBoard extends StatelessWidget {
  const MyDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dashboard',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer(
        child: ListView(children: [
          ListTile(
            title: const Text('Manage campaign'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Leads Management'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Goals Management'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Reports'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Notifications'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Feedback Section'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Task Mangement'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Dealer Management'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('About Us'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Privacy policy'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Contact U'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Version No 1.0.1'),
            onTap: () {},
          ),
        ]),
      ),
    );
  }
}
