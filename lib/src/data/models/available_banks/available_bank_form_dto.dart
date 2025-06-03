import 'package:equatable/equatable.dart';
import 'package:remote_config/src/domain/entitty/available_banks/available_bank_form.dart';
import 'package:remote_config/src/domain/entitty/available_banks/main_address_type.dart';
import 'package:remote_config/src/domain/entitty/available_banks/secondary_address_type.dart';

class AvailableBankFormDto extends Equatable {
  final String mainAddress;
  final String? secondaryAddress;
  final bool addBio;

  const AvailableBankFormDto({
    required this.mainAddress,
    required this.secondaryAddress,
    required this.addBio,
  });

  factory AvailableBankFormDto.fromJson(Map<String, dynamic> json) =>
      AvailableBankFormDto(
        mainAddress: json['main_address'] as String,
        secondaryAddress: json['secondary_address'] as String?,
        addBio: json['add_bio'] as bool,
      );

  Map<String, dynamic> toJson() => {
    'main_address': mainAddress,
    'secondary_address': secondaryAddress,
    'add_bio': addBio,
  };

  AvailableBankForm toEntity() => AvailableBankForm(
    mainAddress: MainAddressType.fromString(mainAddress),
    secondaryAddress:
        secondaryAddress == null
            ? null
            : SecondaryAddressType.fromString(secondaryAddress!),
    addCardHolder: addBio,
  );

  @override
  List<Object?> get props => [mainAddress, secondaryAddress, addBio];
}
