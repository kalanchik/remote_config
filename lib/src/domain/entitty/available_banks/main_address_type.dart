import 'package:equatable/equatable.dart';

sealed class MainAddressType extends Equatable {
  const MainAddressType();

  String get value;

  factory MainAddressType.fromString(String value) {
    return switch (value) {
      MainAddressTypeCard.type => const MainAddressTypeCard(),
      MainAddressTypeYandexTips.type => const MainAddressTypeYandexTips(),
      MainAddressTypeNSPK.type => const MainAddressTypeNSPK(),
      MainAddressTypePhoneNumber.type => const MainAddressTypePhoneNumber(),
      MainAddressTypeIBAN.type => const MainAddressTypeIBAN(),
      _ => const MainAddressTypeCard(),
    };
  }
}

class MainAddressTypeCard extends MainAddressType {
  const MainAddressTypeCard();

  static const String type = "card";

  @override
  String get value => type;

  @override
  List<Object?> get props => [type];
}

class MainAddressTypeYandexTips extends MainAddressType {
  const MainAddressTypeYandexTips();

  static const String type = "yandextips";

  @override
  String get value => type;

  @override
  List<Object?> get props => [type];
}

class MainAddressTypeNSPK extends MainAddressType {
  const MainAddressTypeNSPK();

  static const String type = "nspk";

  @override
  String get value => type;

  @override
  List<Object?> get props => [type];
}

class MainAddressTypePhoneNumber extends MainAddressType {
  const MainAddressTypePhoneNumber();

  static const String type = "phone";

  @override
  String get value => type;

  @override
  List<Object?> get props => [type];
}

class MainAddressTypeIBAN extends MainAddressType {
  const MainAddressTypeIBAN();

  static const String type = "iban";

  @override
  String get value => type;

  @override
  List<Object?> get props => [type];
}

class MainAddressTypeURL extends MainAddressType {
  const MainAddressTypeURL();

  static const String type = "url";

  @override
  String get value => type;

  @override
  List<Object?> get props => [type];
}
