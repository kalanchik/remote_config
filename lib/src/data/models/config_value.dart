import 'package:equatable/equatable.dart';

class ConfigValue<R> extends Equatable {
  const ConfigValue({required this.key, required this.value});

  final String key;
  final R value;

  @override
  List<Object?> get props => [key, value];
}
