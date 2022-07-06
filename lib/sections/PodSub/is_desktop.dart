import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class IsDesktop extends StatefulWidget {
  const IsDesktop({Key? key}) : super(key: key);

  @override
  State<IsDesktop> createState() => _IsDesktopState();
}

class _IsDesktopState extends State<IsDesktop> {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    nameController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
        alignment: Alignment.center,
        decoration:
            BoxDecoration(border: Border.all(color: Colors.black, width: 5)),
        width: screenSize.width * 0.75,
        height: screenSize.height * 0.5,
        margin: const EdgeInsets.all(15.0),
        padding: const EdgeInsets.all(3.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  "Get our Podcasts directly sent to your mail",
                  style: TextStyle(fontSize: 25.0),
                  // textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: TextFormField(
                  controller: nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    hintText: 'Name',
                    isDense: true,
                    contentPadding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: TextFormField(
                  controller: emailController,
                  validator: (value) => EmailValidator.validate(value!)
                      ? null
                      : "Please enter a valid email",
                  maxLines: 1,
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    hintText: 'Your Email',
                    isDense: true,
                    contentPadding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      subscribe();
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(184, 20, 184, 20),
                    backgroundColor: Colors.black,
                  ),
                  child: const Text(
                    'SUBSCRIBE',
                    style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  void subscribe() {
    try {
      FirebaseFirestore.instance.collection('podcast_subscribers').add(
          {'Name': nameController.text, 'Email': emailController.text.trim()});

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('You\'re now subscribed.')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('Something went wrong, please try again.')),
      );
    }
  }
}
