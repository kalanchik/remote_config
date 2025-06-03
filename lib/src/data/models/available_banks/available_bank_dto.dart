import 'package:equatable/equatable.dart';
import 'package:remote_config/remote_config.dart';

class AvailableBankDto extends Equatable {
  const AvailableBankDto({
    required this.form,
    required this.bankName,
    required this.bankIcon,
    required this.bankTokenId,
  });

  final String bankName;
  final String bankIcon;
  final int bankTokenId;
  final AvailableBankFormDto form;

  AvailableBank toEntity() => AvailableBank(
    bankName: bankName,
    bankIcon: bankIcon,
    bankTokenId: bankTokenId,
    form: form.toEntity(),
  );

  factory AvailableBankDto.fromJson(Map<String, dynamic> json) =>
      AvailableBankDto(
        form: AvailableBankFormDto.fromJson(
          json['form'] as Map<String, dynamic>,
        ),
        bankName: json['bankName'] as String,
        bankIcon: json['bankIcon'] as String,
        bankTokenId: (json['bankTokenId'] as num).toInt(),
      );

  Map<String, dynamic> toJson() => {
    'form': form.toJson(),
    'bankName': bankName,
    'bankIcon': bankIcon,
    'bankTokenId': bankTokenId,
  };

  @override
  List<Object?> get props => [bankIcon, bankIcon, bankTokenId, form];
}
