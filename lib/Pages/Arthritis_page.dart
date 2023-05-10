import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../firestore/const.dart';

class Arthritis_page extends StatefulWidget {

  @override
  State<Arthritis_page> createState() => _Arthritis_pageState();
}

class _Arthritis_pageState extends State<Arthritis_page> {

  List Arthritis=[];

  CollectionReference Arthritisref=FirebaseFirestore.instance.collection(KArthritis);
  getData() async {
    var responsebody = await Arthritisref.get();
    responsebody.docs.forEach((element) {
      setState(() {
        Arthritis.add(element.data());
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
        title: const Text("Arthritis "),
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
      body:  Arthritis.isEmpty || Arthritis ==null ? Text('Loading Page .....'):
      ListView.builder(
          itemCount:Arthritis.length,
          itemBuilder:(context,i){
            return
              Text("${ Arthritis[i]['arth']}");
          }),




    );
  }
}
