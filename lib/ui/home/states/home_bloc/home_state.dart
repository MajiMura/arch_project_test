part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object?> get props => [];
}

class HomeInitial extends HomeState {
  const HomeInitial();
}

class HomeLoading extends HomeState {
  const HomeLoading();
}

class HomeSuccessRocket extends HomeState {
  const HomeSuccessRocket({required this.rocket});
  final Rocket rocket;

  @override
  List<Object?> get props => [rocket];
}

class HomeSuccessMission extends HomeState {
  const HomeSuccessMission({required this.mission});
  final List<Mission> mission;

  @override
  List<Object?> get props => [mission];
}

class HomeFailure extends HomeState {
  final String message;
  const HomeFailure({this.message = 'Something went wrong!'});
}
