
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:levent_ozkan_personal_website/core/global_models/app_contents_model/app_contents_model.dart';
import 'package:levent_ozkan_personal_website/core/providers/providers.dart';
import 'package:levent_ozkan_personal_website/core/services/enums/collection.dart';

import 'enums/document.dart';

abstract class ISplashServices{
  Future<AppContentsModel> fetchAppContents();
}

class _SplashServices extends ISplashServices{
  late FirebaseFirestore _fireStore;
  final Ref ref;

  _SplashServices(this.ref){
    _fireStore = ref.read(fireStoreProvider);
  }

  @override
  Future<AppContentsModel> fetchAppContents() async {
    final snapshot = await _fireStore.collection(Collection.homeScreen.name).doc(Document.en.name).get();
    return AppContentsModel.fromJson(snapshot.data()!);
  }

}

final splashServicesProvider = Provider((ref) => _SplashServices(ref));