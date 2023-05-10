class MyModel {
  String ?path;
String ? sore;
String ? tooth;
String ? bron;
String ? arth;
String ? head;
String ? knee;
String ? Quadriceps;
String ? heel;
String ? DOUBLEKNEE;
String ?doorway;
String ? Shoulder;
String ? twist ;
String ? Catpose;
String ? Toe ;
  // Add any other fields you need

  MyModel.fromMap(Map<String, dynamic> map) {
    path = map['path'];
    sore = map['sore'];
    tooth = map['tooth'];
    bron = map['bron'];
    arth = map['arth'];

    head = map['head'];
    knee =map['knee'];
    Quadriceps = map['Quadriceps'];
    heel = map['heel'];
    DOUBLEKNEE = map['DOUBLEKNEE'];
    doorway =map['doorway'];
    Shoulder = map['Shoulder'];
    twist = map['twist'];
    Catpose = map ['Catpose'];
    Toe = map['Toe'];
    // Assign any other fields you need
  }
}
