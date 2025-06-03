import 'package:equatable/equatable.dart';
import 'package:remote_config/src/domain/entitty/available_banks/available_bank_form.dart';

class AvailableBank extends Equatable {
  const AvailableBank({
    required this.bankName,
    required this.bankIcon,
    required this.bankTokenId,
    required this.form,
  });

  final String bankName;
  final String bankIcon;
  final int bankTokenId;
  final AvailableBankForm form;

  @override
  List<Object?> get props => [bankName, bankTokenId, bankIcon, form];
}
