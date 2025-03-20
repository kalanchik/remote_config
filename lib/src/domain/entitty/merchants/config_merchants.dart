import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:remote_config/src/domain/entitty/merchants/merchant_info.dart';

class ConfigMerchants extends Equatable {
  const ConfigMerchants(this.merchants);

  final Map<String, MerchantInfo> merchants;

  MerchantInfo getMerchantInfo(String merchId) {
    if (!merchants.containsKey(merchId)) {
      return MerchantInfo(name: "????", color: Colors.red);
    }

    return merchants[merchId]!;
  }

  List<MerchantInfo> get allMerchants {
    try {
      return merchants.entries
          .map((e) => e.value.copyWith(userId: int.parse(e.key)))
          .toList();
    } catch (e) {
      return [];
    }
  }

  @override
  List<Object?> get props => [merchants];
}
