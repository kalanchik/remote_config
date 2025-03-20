import 'dart:ui';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:remote_config/src/core/convertors/string_to_color.dart';
import 'package:remote_config/src/core/type_defs.dart';
import 'package:remote_config/src/domain/entitty/bank_info/bank_info.dart';

part 'bank_info_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class BankInfoDto extends Equatable {
  const BankInfoDto({
    required this.bankName,
    required this.bankIcon,
    required this.bankTokenId,
    required this.bankCardBackgroundColor,
  });

  final String bankName;
  final String bankIcon;
  final int bankTokenId;
  @StringToColorConverter()
  final Color bankCardBackgroundColor;

  BankInfo toEntity() => BankInfo(
    bankName: bankName,
    bankIcon: bankIcon,
    bankTokenId: bankTokenId,
    bankCardBackgroundColor: bankCardBackgroundColor,
  );

  factory BankInfoDto.fromJson(Json json) => _$BankInfoDtoFromJson(json);

  Json toJson() => _$BankInfoDtoToJson(this);

  @override
  List<Object?> get props => [
    bankName,
    bankIcon,
    bankTokenId,
    bankCardBackgroundColor,
  ];
}
