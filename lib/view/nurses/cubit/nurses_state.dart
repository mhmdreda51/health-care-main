part of 'nurses_cubit.dart';

@immutable
abstract class NursesState {}

class NursesInitial extends NursesState {}

class GetNursesLoading extends NursesState {}

class GetNursesSuccess extends NursesState {}

class GetNursesError extends NursesState {}

class GetNursesCitiesLoading extends NursesState {}

class GetNursesCitiesSuccess extends NursesState {}

class GetNursesCitiesError extends NursesState {}

class GetNursesSpecialtyLoading extends NursesState {}

class GetNursesSpecialtySuccess extends NursesState {}

class GetNursesSpecialtyError extends NursesState {}

class GetNursesSearchLoading extends NursesState {}

class GetNursesSearchSuccess extends NursesState {}

class GetNursesSearchError extends NursesState {}

class SelectCityIdState extends NursesState {}

class SelectSpecialtyIdState extends NursesState {}