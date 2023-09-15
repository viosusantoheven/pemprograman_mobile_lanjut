import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            title: Text('Fooderlich',
                style: Theme.of(context).textTheme.headline6),
            actions: [
              IconButton(onPressed: () {Navigator.pushNamed(context, '/profile');}, icon: Icon(Icons.person, color: Colors.white,))
            ],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/profile_pics/person_kevin.jpeg')
                ),  
            )
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("Nama: DARS"),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              color: Colors.yellow,
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Explore'),
            )
          ]
        ),
      ),
    );
  }

}