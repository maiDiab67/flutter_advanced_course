import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/spacing.dart';
import '../../logic/home_cubit.dart';
import '../../logic/home_state.dart';
import 'doctor_speciality_list_view.dart';
import 'doctors_list_view.dart';

class SpecializationsAndDoctorsBlocBuilder extends StatelessWidget {
  const SpecializationsAndDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationsLoading ||
          current is SpecializationsSuccess ||
          current is SpecializationsError,
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () {
            return const SizedBox.shrink();
          },
          specializationsLoading: () => setupErrorWidget(),
          specializationsSuccess: (specializationsResponseModel) {
            var specializationsList =
                specializationsResponseModel.specializationDataList;
            return setupSuccessWidget(specializationsList);
          },
          specializationsError: (errorHandler) => setupErrorWidget(),
        );
      },
    );
  }

  Widget setupLoadingIndicator() {
    return SizedBox(
      height: 100,
      child: const Center(child: CircularProgressIndicator()),
    );
  }

  Widget setupErrorWidget() {
    return SizedBox.shrink();
  }

  Widget setupSuccessWidget(specializationsList) {
    return Expanded(
      child: Column(
        children: [
          DoctorSpecialtyListView(
            specializationsDataList: specializationsList ?? [],
          ),
          verticalSpace(8),
          DoctorsListView(doctorsList: specializationsList?[0]?.doctorsList),
        ],
      ),
    );
  }
}
