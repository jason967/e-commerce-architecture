import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:sample_project/data/dto/display/view_module/view_module.dto.dart';

import '../../../dto/display/collections/collection.dto.dart';

class DisplayMock {
  Future<List<CollectionDto>?> getCollectionsJson(String path) async {
    final storeType = path.replaceAll('/', '');
    final jsonString =
        await rootBundle.loadString('assets/json/collections_$storeType.json');
    final List<dynamic> jsonResponse = json.decode(jsonString);

    final collections = [
      for (final data in jsonResponse) CollectionDto.fromJson(data)
    ];

    return collections;
  }

  Future<List<ViewModuleDto>?> getViewModulesJson(String path) async {
    final collection = path.replaceAll('/', '');

    final jsonString =
        await rootBundle.loadString('assets/json/view_modules.json');
    final List<dynamic> jsonResponse = json.decode(jsonString);

    final viewModules = [
      for (final data in jsonResponse) ViewModuleDto.fromJson(data)
    ];

    return viewModules;
  }
}
