import 'package:cosquare_app/model/auth/request/sign_in_input.dart';
import 'package:cosquare_app/providers/auth/auth_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthProvider extends StateNotifier<AuthState> {
  AuthProvider(this.ref) : super(const AuthInitial());

  final Ref ref;

  Future<void> signIn(SignInInput input) async {
    try {
      state = const AuthLoading();

      state = await Future.delayed(
        const Duration(milliseconds: 750),
        () => AuthAuthorized(email: 'jason@twosun.com', password: '123456'),
      );
    } catch (e) {
      state = AuthError(error: e.toString());
    }
  }

  Future<void> signOut() async {
    try {
      state = const AuthLoading();

      state = await Future.delayed(
        const Duration(milliseconds: 750),
        () => AuthUnauthorized(),
      );
    } catch (e) {}
  }

  void changeAuth(AuthState authState) {
    state = authState;
  }
}
