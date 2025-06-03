import 'package:equatable/equatable.dart';

sealed class SecondaryAddressType extends Equatable {
  const SecondaryAddressType();

  String get value;

  factory SecondaryAddressType.fromString(String value) {
    return switch (value) {
      _ => SecondaryAddressTypePhone(),
    };
  }
}

class SecondaryAddressTypePhone extends SecondaryAddressType {
  const SecondaryAddressTypePhone();

  static const String type = "phone";

  @override
  String get value => type;

  @override
  List<Object?> get props => [type];
}
