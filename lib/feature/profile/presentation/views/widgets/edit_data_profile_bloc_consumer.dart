import 'package:ecommerce/core/widgets/error_snack_bar.dart';
import 'package:ecommerce/feature/auth/presentation/view/widgets/custom_modal_progress_hud.dart';
import 'package:ecommerce/feature/profile/presentation/views/manger/change_profile_data_cubit/change_profile_data_cubit.dart';
import 'package:ecommerce/feature/profile/presentation/views/widgets/edit_data_profile_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditDataProfileViewBodyBlocConsumer extends StatelessWidget {
  const EditDataProfileViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChangeProfileDataCubit, ChangeProfileDataState>(
      listener: (context, state) {
        if (state is ChangeProfileDataError) {
          buildErrorSnackBar(context, errorMessage: state.message);
        }
        if (state is ChangeProfileDataSuccess) {
          buildErrorSnackBar(
            context,
            errorMessage: 'Profile updated successfully',
          );

          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        return CustomModalProgressHud(
          isLoading: state is ChangeProfileDataLoading ? true : false,
          child: EditDataProfileViewBody(),
        );
      },
    );
  }
}
