import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../routing/router.gr.dart';

///Override global providers value in main.dart/ProviderScope
final fireStoreProvider = Provider<FirebaseFirestore>((ref) {
  throw UnimplementedError();
});

final routerProvider = Provider<AppRouter>((ref) {
  throw UnimplementedError();
});
