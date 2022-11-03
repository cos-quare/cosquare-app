import 'package:equatable/equatable.dart';

class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {
  const AuthInitial();

  @override
  List<Object> get props => [];
}

class AuthLoading extends AuthState {
  const AuthLoading();

  @override
  List<Object> get props => [];
}

class AuthAuthorized extends AuthState {
  String? email;
  String? password;

  AuthAuthorized({this.email, this.password});
  @override
  List<Object> get props => [];
}

class AuthUnauthorized extends AuthState {
  const AuthUnauthorized();

  @override
  List<Object> get props => [];
}

class AuthError extends AuthState {
  final String error;

  const AuthError({required this.error});

  @override
  List<Object> get props => [error];
}
