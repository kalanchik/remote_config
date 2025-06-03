import 'package:equatable/equatable.dart';
import 'package:remote_config/src/domain/entitty/available_banks/main_address_type.dart';
import 'package:remote_config/src/domain/entitty/available_banks/secondary_address_type.dart';

class AvailableBankForm extends Equatable {
  final MainAddressType mainAddress;
  final SecondaryAddressType? secondaryAddress;
  final bool addCardHolder;

  const AvailableBankForm({
    required this.mainAddress,
    required this.secondaryAddress,
    required this.addCardHolder,
  });

  @override
  List<Object?> get props => [mainAddress, secondaryAddress, addCardHolder];
}
