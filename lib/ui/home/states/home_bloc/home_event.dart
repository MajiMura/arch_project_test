part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object?> get props => [];
}

class FetchInitialData extends HomeEvent {
  const FetchInitialData();
}

class FetchRocketData extends HomeEvent {
  const FetchRocketData();
}

class ResetHomeState extends HomeEvent {
  const ResetHomeState();
}

class FetchMissionData extends HomeEvent {
  const FetchMissionData();
}
