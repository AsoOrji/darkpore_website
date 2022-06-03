import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetFoodFormOld extends StatefulWidget {
  const GetFoodFormOld({Key? key}) : super(key: key);

  @override
  State<GetFoodFormOld> createState() => _GetFoodFormOldState();
}

class _GetFoodFormOldState extends State<GetFoodFormOld> {
  final controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: ListView(
          children: [
            const SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(200, 0, 200, 0),
              child: TextFormField(
                controller: controller,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Name',
                ),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            StreamBuilder(
                stream: readUsers(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Text('Something went really wrong! ${snapshot}');
                  } else if (snapshot.hasData) {
                    dynamic users = snapshot.data!;
                    return ListView(
                      children: users.map(buildUser).toList(),
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                }),
            Padding(
              padding: const EdgeInsets.fromLTRB(700, 0, 700, 50),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(minimumSize: const Size(0, 50)),
                onPressed: () {
                  final name = controller.text;
                  createUser(name: name);
                },
                child: const Text('SUBMIT'),
              ),
            ),
          ],
        ));
  }

  Widget buildUser(User user) => ListTile(
        leading: CircleAvatar(child: Text('${user.age}')),
        title: Text(user.name),
        subtitle: Text(user.birthday.toIso8601String()),
      );

  Stream<List<User>> readUsers() => FirebaseFirestore.instance
      .collection('users')
      .snapshots()
      .map((snapshot) =>
          snapshot.docs.map((doc) => User.fromJson(doc.data())).toList());

  Future createUser({required String name}) async {
    final docUser = FirebaseFirestore.instance.collection('users').doc();

    final user = User(
      id: docUser.id,
      name: name,
      age: 21,
      birthday: DateTime(2001, 7, 28),
    );

    final json = user.toJson();

    await docUser.set(json);
  }
}

class User {
  String id;
  final String name;
  final int age;
  final DateTime birthday;

  User({
    this.id = '',
    required this.name,
    required this.age,
    required this.birthday,
  });
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'age': age,
        'birthday': birthday,
      };

  static User fromJson(Map<String, dynamic> json) => User(
        id: json['id'],
        name: json['name'],
        age: json['age'],
        birthday: (json['birthday'] as Timestamp).toDate(),
      );
}
