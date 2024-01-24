import 'package:arch_project_test/ui/home/states/home_bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Text('Home Page'),
            ),
          ),
          BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
            if (state is HomeLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is HomeSuccessRocket) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text("Active: ${state.rocket.active}"),
                    Text("Boosters: ${state.rocket.boosters}"),
                    Text("Company: ${state.rocket.company}"),
                    Text("Cost Per Launch: ${state.rocket.costPerLaunch}"),
                    Text("Country: ${state.rocket.country}"),
                    Text("Description: ${state.rocket.description}"),
                    Text("Diameter: ${state.rocket.diameter}"),
                    Text("Engines: ${state.rocket.engines}"),
                    Text("First Flight: ${state.rocket.firstFlight}"),
                    Text("First Stage: ${state.rocket.firstStage}"),
                    Text("Height: ${state.rocket.height}"),
                    Text("ID: ${state.rocket.id}"),
                    Text("Landing Legs: ${state.rocket.landingLegs}"),
                    Text("Mass: ${state.rocket.mass}"),
                    Text("Payload Weights: ${state.rocket.payloadWeights}"),
                    Text("Rocket ID: ${state.rocket.rocketId}"),
                    Text("Rocket Name: ${state.rocket.rocketName}"),
                    Text("Rocket Type: ${state.rocket.rocketType}"),
                    Text("Second Stage: ${state.rocket.secondStage}"),
                    Text("Stages: ${state.rocket.stages}"),
                    Text("Success Rate: ${state.rocket.successRatePct}"),
                    Text("Wikipedia: ${state.rocket.wikipedia}"),
                  ],
                ),
              );
            } else if (state is HomeSuccessMission) {
              return state.mission.isNotEmpty
                  ? Flexible(
                      child: SizedBox(
                        width: double.infinity,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(state.mission[index].missionName),
                              subtitle: Text(state.mission[index].description),
                            );
                          },
                          itemCount: state.mission.length,
                        ),
                      ),
                    )
                  : const Center(
                      child: Text('No missions available'),
                    );
            } else if (state is HomeFailure) {
              return Center(child: Text(state.message));
            } else {
              return Column(
                children: [
                  ElevatedButton(
                      onPressed: () => BlocProvider.of<HomeBloc>(context)
                          .add(const FetchRocketData()),
                      child: const Text('Get Rocket')),
                  ElevatedButton(
                      onPressed: () => BlocProvider.of<HomeBloc>(context)
                          .add(const FetchMissionData()),
                      child: const Text('Get Missions'))
                ],
              );
            }
          }),
          ElevatedButton(
              onPressed: () => {
                    BlocProvider.of<HomeBloc>(context)
                        .add(const ResetHomeState()),
                    Navigator.pop(context)
                  },
              child: const Text('Go Back')),
        ],
      ),
    )));
  }
}
