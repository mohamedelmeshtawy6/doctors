
 import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../../features/login/data/model/company_model.dart';

class IsarService {
  late Future<Isar> db;

  IsarService() {
    db = openDB();
  }
  Future<Isar> openDB() async {
    if (Isar.instanceNames.isEmpty) {
      final dir = await getApplicationDocumentsDirectory();
      return await Isar.open(
        name: 'medical storage',
        [
         CompanyModelSchema,
         // PathEntitySchema,
         // DeliveryEntitySchema,
        ],
        inspector: true,
        directory: dir.path,
      );
    }

    return Future.value(Isar.getInstance());
  }



   Future<void> addCompany({required CompanyModel model}) async {
    final isar = await db;
    await isar.writeTxn<int>(
        () => isar.companyModels.put(model));
  }


 

}