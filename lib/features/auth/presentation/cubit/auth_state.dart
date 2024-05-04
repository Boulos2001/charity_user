part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.data(
      {@Default(false) bool loading,
      String? code,
      }) = DataStates;
  const factory AuthState.error() = Error;
}
