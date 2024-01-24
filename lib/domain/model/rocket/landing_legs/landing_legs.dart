import 'package:equatable/equatable.dart';

class LandingLegs extends Equatable {
  const LandingLegs({
    required this.number,
    required this.material,
  });

  final int number;
  final String material;

  // fromJson
  factory LandingLegs.fromJson(Map<String, dynamic> json) {
    return LandingLegs(
      number: json['number'] as int,
      material: json['material'] as String,
    );
  }

  // toJson
  Map<String, dynamic> toJson() {
    return {
      'number': number,
      'material': material,
    };
  }

  @override
  List<Object?> get props => [
        number,
        material,
      ];
}
