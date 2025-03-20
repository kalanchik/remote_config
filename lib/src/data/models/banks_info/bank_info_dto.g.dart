// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BankInfoDto _$BankInfoDtoFromJson(Map<String, dynamic> json) => BankInfoDto(
  bankName: json['bankName'] as String,
  bankIcon: json['bankIcon'] as String,
  bankTokenId: (json['bankTokenId'] as num).toInt(),
  bankCardBackgroundColor: const StringToColorConverter().fromJson(
    json['bankCardBackgroundColor'] as String,
  ),
);

Map<String, dynamic> _$BankInfoDtoToJson(BankInfoDto instance) =>
    <String, dynamic>{
      'bankName': instance.bankName,
      'bankIcon': instance.bankIcon,
      'bankTokenId': instance.bankTokenId,
      'bankCardBackgroundColor': const StringToColorConverter().toJson(
        instance.bankCardBackgroundColor,
      ),
    };
