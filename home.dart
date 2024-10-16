import 'package:flutter/material.dart';
import 'login.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  void _signOut(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Signed out!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            onPressed: () {
              signOut(context);
            },
            icon: const Icon(Icons.exit_to_app),
          ),
        ],
      ),
      body: ListView(
        children: const [
          ListTile(
            tileColor: Colors.grey,
            contentPadding: EdgeInsets.all(6),
            leading: Icon(Icons.car_repair),
            title: Text('Indica'),
          ),
          SizedBox(height: 10),
          ListTile(
            tileColor: Color.fromARGB(255, 26, 117, 43),
            contentPadding: EdgeInsets.all(6),
            leading: Icon(Icons.car_repair),
            title: Text('Polo'),
          ),
          SizedBox(height: 10),
          ListTile(
            tileColor: Color.fromARGB(255, 158, 158, 158),
            contentPadding: EdgeInsets.all(6),
            leading: Icon(Icons.car_repair),
            title: Text('Zen'),
          ),
          SizedBox(height: 10),
          ListTile(
            tileColor: Color.fromARGB(255, 220, 47, 47),
            contentPadding: EdgeInsets.all(6),
            leading: Icon(Icons.car_repair),
            title: Text('Rolls Royce'),
          ),
          SizedBox(height: 10),
          ListTile(
            tileColor: Colors.blue,
            contentPadding: EdgeInsets.all(6),
            leading: Icon(Icons.car_repair),
            title: Text('Lamborghini'),
          ),
          SizedBox(height: 10),
          ListTile(
            tileColor: Colors.yellow,
            contentPadding: EdgeInsets.all(6),
            leading: Icon(Icons.car_repair),
            title: Text('Porsche'),
          ),
          SizedBox(height: 10),
          ListTile(
            tileColor: Colors.grey,
            contentPadding: EdgeInsets.all(6),
            leading: Icon(Icons.car_repair),
            title: Text('Skoda'),
          ),
          SizedBox(height: 10),
          ListTile(
            tileColor: Colors.grey,
            contentPadding: EdgeInsets.all(6),
            leading: Icon(Icons.car_repair),
            title: Text('Benz'),
          ),
          SizedBox(height: 10),
          ListTile(
            tileColor: Colors.grey,
            contentPadding: EdgeInsets.all(6),
            leading: Icon(Icons.car_repair),
            title: Text('BMW'),
          ),
          SizedBox(height: 10),
          ListTile(
            tileColor: Colors.grey,
            contentPadding: EdgeInsets.all(6),
            leading: Icon(Icons.car_repair),
            title: Text('Alto'),
          ),
        ],
      ),
    );
  }
}

void signOut(BuildContext ctx) {
  Navigator.of(ctx).pushAndRemoveUntil(
      MaterialPageRoute(builder: (ctx1) => const ScreenLogin()),
      (route) => false);
}
