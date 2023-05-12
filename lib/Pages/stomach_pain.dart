import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../firestore/const.dart';

class stomach_pain extends StatefulWidget {
  const stomach_pain({super.key});

  @override
  State<stomach_pain> createState() => _stomach_painState();
}

class _stomach_painState extends State<stomach_pain> {
  List stomachpain = [];

    CollectionReference stomachpainref = FirebaseFirestore.instance.collection(KStomachpainCollection);

  getData() async {
    var responsebody = await stomachpainref.get();
    responsebody.docs.forEach((element) {
      setState(() {
        stomachpain.add(element.data());
        //stomachpain.add(responsebody.docs());
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
        body: stomachpain.isEmpty ||stomachpain ==null ? Text('Loading Page'):
           ListView.builder(
               itemCount:  stomachpain.length,
               itemBuilder:(context,i){
                 return
                  Text("${stomachpain[i]['path']}");
               }),




    );
  }
}