import 'package:equatable/equatable.dart';

class Thrust extends Equatable {
  const Thrust({
    required this.kN,
    required this.lbf,
  });

  final int kN;
  final int lbf;

  // fromJson
  factory Thrust.fromJson(Map<String, dynamic> json) {
    return Thrust(
      kN: json['kN'] as int,
      lbf: json['lbf'] as int,
    );
  }

  // toJson
  Map<String, dynamic> toJson() {
    return {
      'kN': kN,
      'lbf': lbf,
    };
  }

  @override
  List<Object?> get props => [
        kN,
        lbf,
      ];
}
