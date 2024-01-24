import 'package:equatable/equatable.dart';

class PayloadWeights extends Equatable {
  const PayloadWeights({
    required this.id,
    required this.name,
    required this.kg,
    required this.lb,
  });

  final String id;
  final String name;
  final int kg;
  final int lb;

  // fromJson
  factory PayloadWeights.fromJson(Map<String, dynamic> json) {
    return PayloadWeights(
      id: json['id'] as String,
      name: json['name'] as String,
      kg: json['kg'] as int,
      lb: json['lb'] as int,
    );
  }

  // toJson
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'kg': kg,
      'lb': lb,
    };
  }

  @override
  List<Object?> get props => [
        id,
        name,
        kg,
        lb,
      ];
}
