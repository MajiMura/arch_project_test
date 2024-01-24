import 'package:equatable/equatable.dart';

class Mass extends Equatable {
  const Mass({
    required this.kg,
    required this.lb,
  });

  final int kg;
  final int lb;

  // fromJson
  factory Mass.fromJson(Map<String, dynamic> json) {
    return Mass(
      kg: json['kg'] as int,
      lb: json['lb'] as int,
    );
  }

  // toJson
  Map<String, dynamic> toJson() {
    return {
      'kg': kg,
      'lb': lb,
    };
  }

  @override
  List<Object?> get props => [
        kg,
        lb,
      ];
}
