
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../firestore/const.dart';
class stomach_pain extends StatefulWidget {
  @override
  State<stomach_pain> createState() => _stomach_painState();
}
class _stomach_painState extends State<stomach_pain> {
   List stomachpain=[] ;
   DocumentReference stomachpainref= FirebaseFirestore.instance.collection("stomachpain").
   doc('vUZt3u046Z5ytmhCWjyz');

  getData() async {
    var responsebody= await stomachpainref.get();
    setState(() {
      stomachpain.add(responsebody.data());

    });
  }

   @override
   void initState() {
     super.initState();
     WidgetsBinding.instance.addPostFrameCallback((_) => getData());
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("STOMACH PAIN"),
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
        backgroundColor: Colors.greenAccent[400],
      ),
      body:
     // stomachpain.isEmpty ||stomachpain ==null ? Text('Loading Page'):
      Column(
        children: [
          ListTile(
title: Text("stomachpain:${stomachpain[0]['Anise']}"),

          ),
        ],
      )
    );
  }
}
