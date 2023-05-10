import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../firestore/const.dart';

class TOOTHACHE_GINGIVITIS extends StatefulWidget {

  @override
  State<TOOTHACHE_GINGIVITIS> createState() => _TOOTHACHE_GINGIVITISState();
}

class _TOOTHACHE_GINGIVITISState extends State<TOOTHACHE_GINGIVITIS> {

  List TOOTHACHEANDGINGIVITIS=[];

  CollectionReference TOOTHACHEANDGINGIVITISref=FirebaseFirestore.instance.collection(kTOOTHACHEANDGINGIVITIS);
  getData() async {
    var responsebody = await TOOTHACHEANDGINGIVITISref.get();
    responsebody.docs.forEach((element) {
      setState(() {
        TOOTHACHEANDGINGIVITIS.add(element.data());
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
        title: const Text("TOOTHACHE AND GINGIVITIS "),
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
      body:  TOOTHACHEANDGINGIVITIS.isEmpty || TOOTHACHEANDGINGIVITIS ==null ? Text('Loading Page .....'):
      ListView.builder(
          itemCount:TOOTHACHEANDGINGIVITIS.length,
          itemBuilder:(context,i){
            return
              Text("${ TOOTHACHEANDGINGIVITIS[i]['tooth']}");
          }),




    );
  }
}
