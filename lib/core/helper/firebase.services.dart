import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doctors/core/di/dependancy_injection.dart';
import 'package:doctors/core/helper/isar_services.dart';
import 'package:doctors/core/networks/api_constance.dart';

import '../../features/login/data/model/company_model.dart';

class FirebaseServices {

  Future<CompanyModel?> fetchCompanyData(
      {required String serverUrl}) async {
    
      FirebaseFirestore firestore = FirebaseFirestore.instance;
      CollectionReference companies =
          firestore.collection(ApiConstance.firestoreCollection);

      String docId = getFirestoreDocId(serverUrl: serverUrl);

      final data = await companies.doc(docId).get();
      
      if (data.exists) {
     
log('yes');

        CompanyModel companyModel =
            CompanyModel.fromJson(data.data() as Map<String, dynamic>);
        getIt<IsarService>().addCompany(model: companyModel);
        log("companyModel: ${companyModel.toString()}");
        return companyModel;
      }
      else{
        log('====================================');
        return null;
      }
  }

 
  String getFirestoreDocId({required String serverUrl}) {
    String docId = serverUrl.split("//")[1];
    if (docId.endsWith('/')) {
      docId = docId.substring(0, docId.length - 1);
    }
    return docId;
  }




} 