import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../firestore/const.dart';

class Knee_pain extends StatefulWidget {

  @override
  State<Knee_pain> createState() => _Knee_paibState();
}

class _Knee_paibState extends State<Knee_pain> {
  List physiotherapy=[];

  CollectionReference physiotherapyref=FirebaseFirestore.instance.collection(Kphysiotherapy);
  getData() async {
    var responsebody = await physiotherapyref.get();
    responsebody.docs.forEach((element) {
      setState(() {
        physiotherapy.add(element.data());
      });

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
      body:  physiotherapy.isEmpty || physiotherapy ==null ? Text('Loading Page .....'):
      ListView.builder(
          itemCount:physiotherapy.length,
          itemBuilder:(context,i){
            return
              Text("${ physiotherapy[0]['knee']}");

          }),




    );
  }
}
