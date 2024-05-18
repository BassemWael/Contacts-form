import 'package:flutter/material.dart';

class ContactForm extends StatelessWidget {
  final Function addContact;
  final Function deleteLastContact;

  const ContactForm(this.addContact, this.deleteLastContact);

  @override
  Widget build(BuildContext context) {
    final _nameController = TextEditingController();
    final _numberController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Column(
        children: [
          const SizedBox(height: 20),
          TextField(
            controller: _nameController,
            decoration: const InputDecoration(
              hintText: "Enter your name",
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                borderSide: BorderSide.none, // Remove visible border
              ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            ),
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: _numberController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              hintText: "Enter your number",
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                borderSide: BorderSide.none,
              ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            ),
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 180,
                height: 50,
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blue),
                  ),
                  onPressed: () {
                    addContact(_nameController.text, _numberController.text);

                    _nameController.clear();
                    _numberController.clear();
                  },
                  child: const Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 2,
              ),
              SizedBox(
                width: 180,
                height: 50,
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red),
                  ),
                  onPressed: () => deleteLastContact(),
                  child: const Text(
                    'Delete',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
