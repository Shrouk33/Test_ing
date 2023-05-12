import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../firestore/const.dart';
final physiotherapyref =FirebaseFirestore.instance.collection('physiotherapy');
DocumentReference physiotherapyDocument = physiotherapyref.doc('Kneepain');
class Knee_pain extends StatefulWidget {

  @override
  State<Knee_pain> createState() => _Knee_paibState();
}

class _Knee_paibState extends State<Knee_pain> {
  //List physiotherapy=[];
  //DocumentReference physiotherapyref = FirebaseFirestore.instance.collection(Kphysiotherapy).doc('backpain');

  @override
  void initState() {
    getphysiotherapybyId();
    super.initState();
  }
  getphysiotherapybyId() async{
  final DocumentSnapshot doc=  await physiotherapyref.doc('Kneepain').get();
  if (doc.exists) {
    Object? data = doc.data();
    print('Document data: $data');
  } else {
    print('Document does not exist');
  }
       print(doc.data) ;
       print(doc.id);
       print(doc.exists);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("KNEE PAIN "),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        elevation: 0.00,
        backgroundColor: Colors.cyan,
      ),
      body: //physiotherapy.isEmpty ||physiotherapy ==null ? Text('Loading Page'):

Text('loading'),


    );
  }
}
