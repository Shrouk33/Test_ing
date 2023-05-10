import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../firestore/const.dart';
class bronchitis_page extends StatefulWidget {
  const bronchitis_page({Key? key}) : super(key: key);

  @override
  State<bronchitis_page> createState() => _bronchitis_pageState();
}

class _bronchitis_pageState extends State<bronchitis_page> {
  List bronchitis=[];

  CollectionReference bronchitisref=FirebaseFirestore.instance.collection(Kbronchitis);
  getData() async {
    var responsebody = await bronchitisref.get();
    responsebody.docs.forEach((element) {
      setState(() {
        bronchitis.add(element.data());
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
        title: const Text("Bronchitis "),
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
      body:  bronchitis.isEmpty || bronchitis ==null ? Text('Loading Page .....'):
      ListView.builder(
          itemCount:bronchitis.length,
          itemBuilder:(context,i){
            return
              Text("${ bronchitis[i]['bron']}");
          }),




    );
  }
}
