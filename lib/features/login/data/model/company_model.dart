import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';

part 'company_model.g.dart';

@Collection(inheritance: false)
class CompanyModel extends Equatable {
  final Id? id;
  final String serverUrl;
  final String databaseName;

  const CompanyModel({
    required this.id,
    required this.serverUrl,
    required this.databaseName,
  });

  factory CompanyModel.fromJson(Map<String, dynamic> json) => CompanyModel(
      id: 1,
      serverUrl: json['server_url'],
      databaseName: json['database_name']);

  @override
  @ignore
  List<Object?> get props => [
        id,
        serverUrl,
        databaseName,
      ];
}

//flutter pub run build_runner watch --delete-conflicting-outputs