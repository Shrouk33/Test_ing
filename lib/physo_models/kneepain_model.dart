class kneepain {

  String ? knee;
  String ? Quadriceps;
  String ? heel;
  // Add any other fields you need
  kneepain.fromMap(Map<String, dynamic> map) {
    knee =map['knee'];
    Quadriceps = map['Quadriceps'];
    heel = map['heel'];
    // Assign any other fields you need
  }
}
