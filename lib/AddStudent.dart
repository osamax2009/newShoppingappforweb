import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:untitled/HomePage.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class AddStudent extends StatefulWidget {
  const AddStudent({Key? key}) : super(key: key);

  @override
  _AddStudentState createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {
  CollectionReference studentcolle =
      FirebaseFirestore.instance.collection('school');

  String? avg,
      year,
      sub,
      school,
      stage,
      address,
      birth,
      sex,
      mothername,
      fullname,
      orgnization;

  Future<void> addStudent(data) async {
    await studentcolle
        .add(data)
        .then((value) => print(" Student Add"))
        .catchError((error) => print("failed to add "));
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("اضافة طالب"),
      ),
      body: Padding(
       // alignment: Alignment.center,
        padding:  EdgeInsets.symmetric( horizontal:  kIsWeb ? MediaQuery.of(context).size.width * 0.25 : 10),
        child: Form(
          key: _formKey,
          child: ListView(
//            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  onChanged: (value) => fullname = value,

                  decoration: InputDecoration(hintText: "ادخل اسم الطالب"),

                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  onChanged: (value) => mothername = value,
                  decoration: InputDecoration(hintText: "اكتب اسم الام"),

                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  onChanged: (value) => address = value,
                  decoration: InputDecoration(hintText: "العنوان"),

                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  onChanged: (value) => sex = value,
                  decoration: InputDecoration(hintText: "الجنس"),

                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  onChanged: (value) => birth = value,

                  decoration:
                      InputDecoration(hintText: "مكان التولد والمواليد"),

                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  onChanged: (value) => address = value,

                  decoration: InputDecoration(hintText: "محل الاقامه"),

                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  onChanged: (value) => school = value,

                  decoration: InputDecoration(hintText: "اسم المدرسة"),

                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  onChanged: (value) => stage = value,

                  decoration: InputDecoration(hintText: "فرع الدراسه"),

                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  onChanged: (value) => year = value,

                  decoration: InputDecoration(hintText: "سنة التخرج"),

                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  onChanged: (value) => avg = value,

                  decoration: InputDecoration(hintText: "المعدل"),

                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  onChanged: (value) => orgnization = value,

                  decoration: InputDecoration(hintText: "المديريه"),

                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Container(
                  margin: EdgeInsets.all(20),
                  width: double.infinity,
                  height: 35,
                  child: ElevatedButton(
                    onPressed: () {
                      // Validate returns true if the form is valid, or false otherwise.
                      if (_formKey.currentState!.validate()) {
                        var data = {
                          "avg": avg,
                          "year": year,
                          "sub": sub,
                          "school": school,
                          "stage": stage,
                          "address": address,
                          "birth": birth,
                          "sex": sex,
                          "mothername": mothername,
                          "fullname": fullname,
                          "orgnization": orgnization
                        };

                        addStudent(data).whenComplete(() => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()))
                        );

                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                      }
                    },
                    child: Text('حفظ'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
