import 'package:cosquare_app/providers/auth/auth_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'auth/auth_state.dart';

final authProvider = StateNotifierProvider<AuthProvider, AuthState>((ref) {
  return AuthProvider(ref);
});
