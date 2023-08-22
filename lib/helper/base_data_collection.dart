import 'package:z_core/pexels/model/res/collection.model.dart';

class DataCollection {
  final String appName;
  final List<Collection> collection;

  DataCollection({required this.appName, required this.collection});
}

DataCollection dataCollection()=>DataCollection(appName: 'nullName', collection: []);