import 'package:equatable/equatable.dart';
import 'package:flutter/rendering.dart';

class MerchantInfo extends Equatable {
  const MerchantInfo({required this.name, required this.color, this.userId});

  final int? userId;
  final String name;
  final Color color;

  MerchantInfo copyWith({String? name, Color? color, int? userId}) =>
      MerchantInfo(
        name: name ?? this.name,
        color: color ?? this.color,
        userId: userId ?? this.userId,
      );

  @override
  List<Object?> get props => [name, color, userId];
}
