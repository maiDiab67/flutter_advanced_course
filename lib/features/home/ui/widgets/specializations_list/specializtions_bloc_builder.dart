import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/features/home/ui/widgets/doctors_list/doctors_shimmer_loading.dart';
import 'package:flutter_advanced_course/features/home/ui/widgets/specializations_list/specialty_shimmer_loading.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../logic/home_cubit.dart';
import '../../../logic/home_state.dart';
import '../doctors_list/doctors_list_view.dart';
import 'specialty_list_view.dart';

class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({super.key});

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
          specializationsLoading: () => setupLoading(),
          specializationsSuccess: (specializationsResponseModel) {
            var specializationsList = specializationsResponseModel;
            return setupSuccessWidget(specializationsList);
          },
          specializationsError: (errorHandler) => setupErrorWidget(),
        );
      },
    );
  }

  Widget setupLoading() {
    return Expanded(
      child: Column(
        children: [
          const SpecialtyShimmerLoading(),
          verticalSpace(8),
          const DoctorsShimmerLoading(),
        ],
      ),
    );
  }

  Widget setupErrorWidget() {
    return SizedBox.shrink();
  }

  Widget setupSuccessWidget(specializationsList) {
    return SpecialtyListView(specializationDataList: specializationsList ?? []);
  }
}
