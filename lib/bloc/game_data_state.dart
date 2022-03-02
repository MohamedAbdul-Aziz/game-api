// part of 'game_data_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_api/models/data_model.dart';
import 'package:equatable/equatable.dart';
import 'package:bloc_api/repo/games_repo.dart';

abstract class GameDataState extends Equatable {
  const GameDataState();

  @override
  List<Object> get props => [];
}

class GameDataInitialState extends GameDataState {}

class GameDataLoadingState extends GameDataState {}

class GameDataLoadedState extends GameDataState {
  final List<DataModel> apiResult;
  const GameDataLoadedState({
    required this.apiResult,
  });
}

class GameDataErrorState extends GameDataState {}
