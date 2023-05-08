class MyModel {
  String ?Anise;
  String ? mint;
  String ? vanila;
  // Add any other fields you need

  MyModel.fromMap(Map<String, dynamic> map) {
    Anise = map['Anise'];
    mint = map['mint'];
    vanila = map['vanila'];
    // Assign any other fields you need
  }
}
