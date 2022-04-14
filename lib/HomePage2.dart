import 'dart:io';
import 'dart:typed_data';
import 'dart:typed_data';
import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/services.dart';
import 'package:untitled/AddStudent.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:universal_html/html.dart' as html;




class HomePage2 extends StatefulWidget {


   HomePage2({Key? key}) : super(key: key);

  @override
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  TextStyle? myStyle = TextStyle(fontFamily: 'OpenSans');

  String _searchValue = "";

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

  final _SearchNotecontroller = TextEditingController() ;
    @override
  void initState() {
    // TODO: implement initState


    super.initState();
  }






  final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance.collection('schoolx').snapshots();

  @override
  Widget build(BuildContext context) {


    final pdf = pw.Document();


   addPdf()  async {
       final font = await rootBundle.load("assets/Cairo-Regular.ttf");
           final ttf = pw.Font.ttf(font);


           pdf.addPage(pw.Page(
            pageFormat: PdfPageFormat.a4,
            build: (pw.Context context) {
              return pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.center,
                children: [
                 pw.Text("بسم الله الرحمن الرحيم",style: pw.TextStyle(font: ttf, fontSize: 25), textDirection: pw.TextDirection.rtl),
                   pw.Text(fullname!,style: pw.TextStyle(font: ttf, fontSize: 25), textDirection: pw.TextDirection.rtl),
                   pw.Text(avg!, style: pw.TextStyle(font: ttf, fontSize: 25), textDirection: pw.TextDirection.rtl),
                   pw.Text(school!, style: pw.TextStyle(font: ttf, fontSize: 25), textDirection: pw.TextDirection.rtl),
                   pw.Text(stage!, style: pw.TextStyle(font: ttf, fontSize: 25), textDirection: pw.TextDirection.rtl),
                ]
              );

              // Center(
              //   child: pw.Text("Hello World"),
              // );
            }));
        final bytes = pdf.save();
        final blob = html.Blob([bytes], 'application/pdf');
     }
    addPdf();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("ثانوية الفارابي للمتفوقين      خريجي العام 2020-2021	"),
        actions: [
          Tooltip(
            message: "اضغط لاضافة طالب",
            child: IconButton(icon: Icon(Icons.person_add), onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AddStudent()));
            },),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body:  StreamBuilder<QuerySnapshot>(
      stream: _usersStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text('Something went wrong'));
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
              child: CircularProgressIndicator()
          );
        }

        return Container(
          margin: EdgeInsets.symmetric(horizontal:  MediaQuery.of(context).size.width * 0.25),
          alignment: Alignment.center,
          width: kIsWeb ? MediaQuery.of(context).size.width * 0.5:MediaQuery.of(context).size.width * 0.8,
          child: Column(

            children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: "اكتب السنه الدراسية"
                  ),
                  controller: _SearchNotecontroller,
                ),
                SizedBox(
                  height: 20,
                ),
              ElevatedButton(onPressed: ()  {
                  setState(() {
                    _searchValue= _SearchNotecontroller.text;
                  });
              }, child: Text("بحث")),


              Expanded(
                child: ListView(
                  children: snapshot.data!.docs.map((DocumentSnapshot document) {
                    Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
                    return
                      data['year'].toString().contains(_searchValue)?
                      Column(
                        children: [

                          Card(
                            margin: EdgeInsets.all(10),

                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("الاسم:"),
                                      Text(data['fullname']?? ""),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("المعدل:"),
                                      Text(data['avg']?? ""),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("سنة التخرج:"),
                                      Text(data['year']?? ""),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("الاسم:"),
                                      Text(data['sub']?? ""),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("المدرسة:"),
                                      Text(data['school']?? ""),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("فرع الدراسة:"),
                                      Text(data['stage']?? ""),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("العنوان:"),
                                      Text(data['address']?? ""),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("محل الولاده والمواليد:"),
                                      Text(data['birth']?? ""),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("الجنس:"),
                                      Text(data['sex']?? ""),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("اسم الام:"),
                                      Text(data['mothername']?? ""),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("المديرية:"),
                                      Text(data['orgnization']?? ""),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            // title: Text(data['fullname']?? ""),
                            // subtitle: Text(data['year']??""),
                    ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(onPressed: () async {
                                CollectionReference studentcolle =
                                FirebaseFirestore.instance.collection('school');
                                studentcolle.doc(document.id)
                                    .delete()
                                    .then((value) => print("User Deleted"))
                                    .catchError((error) => print("Failed to delete user: $error"));

                              }, child: Text("حذف")),
                              ElevatedButton(onPressed: () async {
                               // print(data['fullname']);
                                  setState(() {
                                    fullname = data['fullname'];
                                    avg = data['avg'];
                                    stage = data['stage'];
                                    school = data['school'];
                                  });

                                 // createPdf();
                                  Uint8List pdfInBytes = await pdf.save();
                                final blob = html.Blob([pdfInBytes], 'application/pdf');
                                final url = html.Url.createObjectUrlFromBlob(blob);
                               var anchor = html.document.createElement('a') as html.AnchorElement
                                  ..href = url
                                  ..style.display = 'none'
                                  ..download = 'pdf.pdf';
                                html.document.body!.children.add(anchor);
                                anchor.click();

                              }, child: Text("طباعه الاسم")),
                            ],
                          )
                        ],
                      ):
                    Container()
                    ;
                  }).toList(),
                ),
              )
            ],
          ),
        );
      },
    ),
    );
  }
}
