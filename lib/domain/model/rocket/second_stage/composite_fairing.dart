import 'package:arch_project_test/domain/model/rocket/diameter.dart';
import 'package:arch_project_test/domain/model/rocket/height.dart';
import 'package:equatable/equatable.dart';

class CompositeFairing extends Equatable {
  const CompositeFairing(
    this.height,
    this.diameter,
  );

  final Height height;
  final Diameter diameter;

  // fromJson
  factory CompositeFairing.fromJson(Map<String, dynamic> json) {
    return CompositeFairing(
      Height.fromJson(json['height'] as Map<String, dynamic>),
      Diameter.fromJson(json['diameter'] as Map<String, dynamic>),
    );
  }

  // toJson
  Map<String, dynamic> toJson() {
    return {
      'height': height.toJson(),
      'diameter': diameter.toJson(),
    };
  }

  @override
  List<Object?> get props => [
        height,
        diameter,
      ];
}
