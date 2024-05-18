import 'package:flutter/material.dart';
import 'contact_form.dart';
import 'contact_card.dart';

void main() {
  runApp(const ContactInfo());
}

class ContactInfo extends StatefulWidget {
  const ContactInfo({super.key});

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  List<Map<String, String>> contacts = [];

  void _addContact(String name, String number) {
    if (name.isNotEmpty && number.isNotEmpty && contacts.length <= 2) {
      Map<String, String> data = {
        'name': name,
        'number': number,
      };
      contacts.add(data);

      setState(() {});
    }
  }

  void _deleteLastContact() {
    if (contacts.isNotEmpty) {
      contacts.removeLast();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff2196F3),
          title: const Center(
            child: Text(
              "Contacts Screen",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: Column(
          children: [
            ContactForm(_addContact, _deleteLastContact),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (int i = 0; i < contacts.length; i++)
                      ContactCard(contacts[i]),
                  ],
                ),
              ),
            ),
          ],
        ),
        backgroundColor: const Color(0xff9E9E9E),
      ),
    );
  }
}
