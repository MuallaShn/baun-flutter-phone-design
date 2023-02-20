import 'package:flutter/material.dart';

class CardDetailsWidget extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String phoneNumber;

  const CardDetailsWidget({
    Key? key,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                "assets/img/blank profile.png",
                width: 130,
                height: 130,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'First Name',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 8.0),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your first name',
                border: OutlineInputBorder(),
              ),
              controller: TextEditingController(text: firstName),
            ),
            SizedBox(height: 16.0),
            Text(
              'Last Name',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 8.0),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your last name',
                border: OutlineInputBorder(),
              ),
              controller: TextEditingController(text: lastName),
            ),
            SizedBox(height: 16.0),
            Text(
              'Phone Number',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 8.0),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your phone number',
                border: OutlineInputBorder(),
              ),
              controller: TextEditingController(text: phoneNumber),
            ),
          ],
        ),
      ),
    );
  }
}
