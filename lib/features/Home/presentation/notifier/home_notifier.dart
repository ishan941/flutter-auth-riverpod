import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nepstayapp/core/error/failure.dart';
import 'package:nepstayapp/core/usecase/usecase.dart';
import 'package:nepstayapp/features/Home/data/model/property_model.dart';
import 'package:nepstayapp/features/Home/domain/usecase/get_property_details_use_case.dart';
import 'package:nepstayapp/features/Home/domain/usecase/get_property_use_case.dart';

import 'package:nepstayapp/injection_container.dart';

class PropertyNotifier extends StateNotifier<PropertyState> {
  final GetPropertyUseCase getPropertyUseCase;

  PropertyNotifier({
    required this.getPropertyUseCase,
  }) : super(PropertyState.initial());

  Future<void> getProperties() async {
    state = const PropertyState.loading();

    final result = await getPropertyUseCase(NoParams());

    result.fold(
      (failure) {
        state = PropertyState.error(message: _mapFailureToMessage(failure));
      },
      (propertyResponse) {
        state = PropertyState.success(response: propertyResponse);
      },
    );
  }

  String _mapFailureToMessage(Failure failure) {
    return failure is ServerFailure ? "Server Error" : "Unknown Error";
  }
}

final propertyProvider =
    StateNotifierProvider<PropertyNotifier, PropertyState>((ref) {
  return sl<PropertyNotifier>()..getProperties(); // Auto-fetch properties
});
