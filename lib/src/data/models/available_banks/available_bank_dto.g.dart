// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_bank_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AvailableBankDto _$AvailableBankDtoFromJson(Map<String, dynamic> json) =>
    AvailableBankDto(
      bankName: json['bankName'] as String,
      bankIcon: json['bankIcon'] as String,
      bankTokenId: (json['bankTokenId'] as num).toInt(),
    );

Map<String, dynamic> _$AvailableBankDtoToJson(AvailableBankDto instance) =>
    <String, dynamic>{
      'bankName': instance.bankName,
      'bankIcon': instance.bankIcon,
      'bankTokenId': instance.bankTokenId,
    };
