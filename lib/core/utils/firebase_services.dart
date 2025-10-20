import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseServices {
  FirebaseServices._();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  static final FirebaseServices instance = FirebaseServices._();
  Future<void> set({
    required String collectionPath,
    required Map<String, dynamic> data,
  }) async {
    final collectionRef = _firestore.doc(collectionPath);
    await collectionRef.set(data);
  }

  Future<void> deleteData({required collectionPath}) async {
    final collectionRef = _firestore.doc(collectionPath);
    await collectionRef.delete();
  }

  Stream<T> documentStream<T>({
    required String documentPath,
    required T Function(Map<String, dynamic>? data, String documentId) builder,
  }) {
    final documentRef = _firestore.doc(documentPath);
    final snapshots = documentRef.snapshots();
    return snapshots.map((snapshot) => builder(snapshot.data(), snapshot.id));
  }

  Stream<List<T>> collectionStream<T>({
    required String collectionPath,
    required T Function(Map<String, dynamic>? data, String documentId) builder,
    Query Function(Query query)? queryBuilder,
    int Function(T lhs, T rhs)? sort,
  }) {
    Query query = _firestore.collection(collectionPath);
    if (queryBuilder != null) {
      query = queryBuilder(query);
    }
    final snapshots = query.snapshots();
    return snapshots.map((snapshot) {
      final result = snapshot.docs
          .map(
            (snapshot) =>
                builder(snapshot.data() as Map<String, dynamic>, snapshot.id),
          )
          .where((value) => value != null)
          .toList();
      if (sort != null) {
        result.sort(sort);
      }
      return result;
    });
  }
}
