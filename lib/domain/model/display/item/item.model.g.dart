// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Item _$$_ItemFromJson(Map<String, dynamic> json) => _$_Item(
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      image: json['image'] as String,
      basePrice: json['basePrice'] as String,
      discount: json['discount'] as String,
      price: json['price'] as String,
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'image': instance.image,
      'basePrice': instance.basePrice,
      'discount': instance.discount,
      'price': instance.price,
    };
