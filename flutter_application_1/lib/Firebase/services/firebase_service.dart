import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;


// Create
Future<void> addPeople(String name, String edad, String dni) async{
  await db.collection("people").add({"nombre":name, "edad": edad,"DNI": dni });
} 

// Read
Future<List> getPeople() async {
  List people = [];
  CollectionReference collectionReferencePeople = db.collection('people');
  QuerySnapshot querypeople = await collectionReferencePeople.get();

  querypeople.docs.forEach((documento){
    people.add(documento.data());
  });
  
  await Future.delayed(const Duration(seconds: 1));
  return people;
}


// Update
// Delete