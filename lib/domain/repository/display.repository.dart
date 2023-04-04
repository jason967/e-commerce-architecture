import 'package:sample_project/domain/model/display/view_module/view_module.model.dart';

import '../model/display/collection/collection.model.dart';

abstract class DisplayRepository {
  Future<List<Collection>> getCollections({
    required String path,
    Map<String, String>? queries,
  });
  Future<List<ViewModule>> getViewModules({
    required String path,
    Map<String, String>? queries,
  });
}
