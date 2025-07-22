import 'package:ecommerce/core/services/get_it_service.dart';
import 'package:ecommerce/core/widgets/build_app_bar.dart';
import 'package:ecommerce/feature/profile/domain/repo/change_user_data_repo.dart';
import 'package:ecommerce/feature/profile/presentation/views/manger/change_profile_data_cubit/change_profile_data_cubit.dart';
import 'package:ecommerce/feature/profile/presentation/views/widgets/edit_data_profile_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditDataProfileView extends StatelessWidget {
  const EditDataProfileView({super.key});
  static const String routeName = 'editDataProfile';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChangeProfileDataCubit(getIt<ChangeUserDataRepo>()),
      child: Scaffold(
        appBar: buildAppBar(
          context,
          title: 'Edit Profile',
          isNotification: false,
          isbackButton: true,
        ),
        body: EditDataProfileViewBodyBlocConsumer(),
      ),
    );
  }
}
