import 'package:bloc/bloc.dart';
import 'package:ecommerce/feature/profile/domain/entities/profile_entity.dart';
import 'package:ecommerce/feature/profile/domain/repo/change_user_data_repo.dart';
import 'package:equatable/equatable.dart';

part 'change_profile_data_state.dart';

class ChangeProfileDataCubit extends Cubit<ChangeProfileDataState> {
  final ChangeUserDataRepo changeUserDataRepo;
  ChangeProfileDataCubit(this.changeUserDataRepo)
    : super(ChangeProfileDataInitial());
  void changeUserData({required ProfileEntity profileEntity}) {
    emit(ChangeProfileDataLoading());
    // Here you would typically call the repository method to change user data
    // and handle the result accordingly.
    changeUserDataRepo.changeUserData(profileEntity: profileEntity).then((
      result,
    ) {
      result.fold(
        (failure) => emit(ChangeProfileDataError(message: failure.message)),
        (_) => emit(ChangeProfileDataSuccess()),
      );
    });
  }
}
