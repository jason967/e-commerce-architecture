// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemDto _$$_ItemDtoFromJson(Map<String, dynamic> json) => _$_ItemDto(
      title: json['title'] as String? ?? '',
      subtitle: json['subtitle'] as String? ?? '',
      image: json['image'] as String? ?? '',
      basePrice: json['basePrice'] as String? ?? '',
      price: json['price'] as String? ?? '',
      discount: json['discount'] as String? ?? '',
    );

Map<String, dynamic> _$$_ItemDtoToJson(_$_ItemDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'image': instance.image,
      'basePrice': instance.basePrice,
      'price': instance.price,
      'discount': instance.discount,
    };
