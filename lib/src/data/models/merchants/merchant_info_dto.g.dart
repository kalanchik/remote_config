// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchant_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MerchantInfoDto _$MerchantInfoDtoFromJson(Map<String, dynamic> json) =>
    MerchantInfoDto(
      name: json['name'] as String,
      color: const StringToColorConverter().fromJson(json['color'] as String),
    );

Map<String, dynamic> _$MerchantInfoDtoToJson(MerchantInfoDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'color': const StringToColorConverter().toJson(instance.color),
    };
