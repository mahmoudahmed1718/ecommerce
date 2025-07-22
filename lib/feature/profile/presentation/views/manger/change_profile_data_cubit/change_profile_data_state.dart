part of 'change_profile_data_cubit.dart';

sealed class ChangeProfileDataState extends Equatable {
  const ChangeProfileDataState();

  @override
  List<Object> get props => [];
}

final class ChangeProfileDataInitial extends ChangeProfileDataState {}

final class ChangeProfileDataLoading extends ChangeProfileDataState {}

final class ChangeProfileDataSuccess extends ChangeProfileDataState {}

final class ChangeProfileDataError extends ChangeProfileDataState {
  final String message;

  const ChangeProfileDataError({required this.message});
}
