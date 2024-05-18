import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  final Map<String, String> contact;

  const ContactCard(this.contact);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Colors.white,
      ),
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(15),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name: ${contact['name']}',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 10),
            Text(
              'Phone: ${contact['number']}',
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
