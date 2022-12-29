import 'package:flutter_bloc/flutter_bloc.dart';

class AuthorizationState {
  final bool? authorization;

  AuthorizationState(this.authorization);
}

class SplashCubit extends Cubit<AuthorizationState> {
  SplashCubit() : super(AuthorizationState(null)) {
    Future.delayed(const Duration(seconds: 2))
        .then((_) => emit(AuthorizationState(false)));
  }
}
