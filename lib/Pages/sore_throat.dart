import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../firestore/const.dart';
class sore_throat extends StatefulWidget {
  @override
  State<sore_throat> createState() => _sore_throatState();
}
class _sore_throatState extends State<sore_throat> {
  List SORETHROAT=[];

CollectionReference SORETHROATref=FirebaseFirestore.instance.collection(kSORETHROAT);
  getData() async {
    var responsebody = await SORETHROATref.get();
    responsebody.docs.forEach((element) {
      setState(() {
        SORETHROAT.add(element.data());
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
        title: const Text("Sore Throat"),
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
      body:  SORETHROAT.isEmpty || SORETHROAT ==null ? Text('Loading Page .....'):
      ListView.builder(
          itemCount:SORETHROAT.length,
          itemBuilder:(context,i){
            return
              Text("${ SORETHROAT[i]['sore']}");
          }),




    );
  }
}
