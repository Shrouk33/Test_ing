class MyModel {
  String ?path;
String ? sore;
String ? tooth;
String ? bron;
String ? arth;

  // Add any other fields you need

  MyModel.fromMap(Map<String, dynamic> map) {
    path = map['path'];
    sore = map['sore'];
    tooth = map['tooth'];
    bron = map['bron'];
    arth = map['arth'];


    // Assign any other fields you need
  }
}
