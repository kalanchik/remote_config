import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:remote_config/src/core/type_defs.dart';
import 'package:remote_config/src/domain/entitty/available_banks/available_bank.dart';

part 'available_bank_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class AvailableBankDto extends Equatable {
  const AvailableBankDto({
    required this.bankName,
    required this.bankIcon,
    required this.bankTokenId,
  });

  final String bankName;
  final String bankIcon;
  final int bankTokenId;

  AvailableBank toEntity() => AvailableBank(
    bankName: bankName,
    bankIcon: bankIcon,
    bankTokenId: bankTokenId,
  );

  factory AvailableBankDto.fromJson(Json json) =>
      _$AvailableBankDtoFromJson(json);

  Json toJson() => _$AvailableBankDtoToJson(this);

  @override
  List<Object?> get props => [bankIcon, bankIcon, bankTokenId];
}
