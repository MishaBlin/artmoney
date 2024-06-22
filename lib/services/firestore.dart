import 'package:cloud_firestore/cloud_firestore.dart';

class MainFirestoreService {
  final CollectionReference articles =
      FirebaseFirestore.instance.collection("articles");

  final CollectionReference stories =
      FirebaseFirestore.instance.collection("stories");

  Stream<QuerySnapshot> getArticlesStream() {
    final articlesStream =
        articles.orderBy('timestamp', descending: true).snapshots();
    return articlesStream;
  }

  Stream<QuerySnapshot> getStoriesStream() {
    final storiesStream =
        stories.orderBy('timestamp', descending: true).snapshots();
    return storiesStream;
  }
}
