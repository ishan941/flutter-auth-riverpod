import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nepstayapp/core/error/failure.dart';
import 'package:nepstayapp/features/Home/data/model/property_model.dart';
import 'package:nepstayapp/features/Home/domain/usecase/get_property_details_use_case.dart';
import 'package:nepstayapp/injection_container.dart';

class PropertyDetailNotifier extends StateNotifier<PropertyDetailsState> {
  final GetPropertyDetailUseCase getPropertyDetailUseCase;

  PropertyDetailNotifier({
    required this.getPropertyDetailUseCase,
  }) : super(PropertyDetailsState.initial());

  Future<void> getProperties(String uid) async {
    state = const PropertyDetailsState.loading();

    final result = await getPropertyDetailUseCase(uid);

    result.fold(
      (failure) {
        state =
            PropertyDetailsState.error(message: _mapFailureToMessage(failure));
      },
      (propertyDetailModel) {
        state =
            PropertyDetailsState.success(propertyDetail: propertyDetailModel);
      },
    );
  }

  String _mapFailureToMessage(Failure failure) {
    return failure is ServerFailure ? "Server Error" : "Unknown Error";
  }
}

final propertyDetailProvider =
    StateNotifierProvider<PropertyDetailNotifier, PropertyDetailsState>((ref) {
  return PropertyDetailNotifier(
    getPropertyDetailUseCase: sl<GetPropertyDetailUseCase>(),
  );
});
