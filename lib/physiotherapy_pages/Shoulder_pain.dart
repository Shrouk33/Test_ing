import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../firestore/const.dart';

class Shoulder_pain extends StatefulWidget {

  @override
  State<Shoulder_pain> createState() => _Shoulder_painState();
}

class _Shoulder_painState extends State<Shoulder_pain> {


dynamic physiotherapy = [];

DocumentReference physiotherapyref = FirebaseFirestore.instance.collection(Kphysiotherapy).doc('Shoulderpain');

getData() async {
  var responsebody = await physiotherapyref.get();
  setState(() {
    physiotherapy.add(responsebody.data());
  });
}

@override
void initState() {
  getData();
  super.initState();
}
@override
Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: const Text("Shoulder PAIN"),
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
        backgroundColor: Colors.cyanAccent,
      ),
      body:
      physiotherapy.isEmpty ||physiotherapy ==null ? Text('Loading Page'):
      ListView.builder(
          itemCount:  physiotherapy.length,
          itemBuilder:(context,i){
            return
              SingleChildScrollView(
                child: ListTile(
                  title: Text("Shoulder pain:",style: TextStyle(color: Colors.purple,fontSize: 24),),
                  subtitle:   Text("doorway:${physiotherapy[i]['Shoulder']}"),
                ),


              );
          }
      )

  );
}}