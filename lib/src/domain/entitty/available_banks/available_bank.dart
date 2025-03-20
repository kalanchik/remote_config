import 'package:equatable/equatable.dart';

class AvailableBank extends Equatable {
  const AvailableBank({
    required this.bankName,
    required this.bankIcon,
    required this.bankTokenId,
  });

  final String bankName;
  final String bankIcon;
  final int bankTokenId;

  @override
  List<Object?> get props => [bankName, bankTokenId, bankIcon];
}
