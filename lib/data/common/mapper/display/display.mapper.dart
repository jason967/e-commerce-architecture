import 'package:sample_project/domain/model/display/view_module/view_module.model.dart';

import '../../../../domain/model/display/collection/collection.model.dart';
import '../../../../domain/model/display/item/item.model.dart';
import '../../../dto/display/collections/collection.dto.dart';
import '../../../dto/display/item/item.dto.dart';
import '../../../dto/display/view_module/view_module.dto.dart';

extension CollectionEx on CollectionDto {
  Collection toModel() {
    return Collection(
      title: title ?? '',
      tabId: tabId ?? '',
    );
  }
}

extension ItemEx on ItemDto {
  Item toModel() {
    return Item(
      title: title ?? '',
      subtitle: subtitle ?? '',
      image: image ?? '',
      basePrice: basePrice ?? '',
      discount: discount ?? '',
      price: price ?? '',
    );
  }
}

extension ViewModuleEx on ViewModuleDto {
  ViewModule toModel() {
    return ViewModule(
      type: type ?? '',
      title: title ?? '',
      subtitle: subtitle ?? '',
      image: image ?? '',
      items: items?.map((item) => item.toModel()).toList() ?? [],
    );
  }
}
