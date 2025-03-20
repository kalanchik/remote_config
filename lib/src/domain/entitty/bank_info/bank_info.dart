import 'dart:ui';

import 'package:equatable/equatable.dart';

class BankInfo extends Equatable {
  const BankInfo({
    required this.bankName,
    required this.bankIcon,
    required this.bankTokenId,
    required this.bankCardBackgroundColor,
  });

  final String bankName;
  final String bankIcon;
  final int bankTokenId;
  final Color bankCardBackgroundColor;

  @override
  List<Object?> get props => [
    bankName,
    bankIcon,
    bankTokenId,
    bankCardBackgroundColor,
  ];
}
