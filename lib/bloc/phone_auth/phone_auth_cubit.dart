import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:doyou/domain/entities/user_entity.dart';
import 'package:doyou/domain/usecases/get_create_current_user_usecase.dart';
import 'package:doyou/domain/usecases/sign_in_with_phone_number_usecase.dart';
import 'package:doyou/domain/usecases/verify_phone_number_usecase.dart';
import 'package:equatable/equatable.dart';

part 'phone_auth_state.dart';

class PhoneAuthCubit extends Cubit<PhoneAuthState> {
  final SignInWithPhoneNumberUseCase? signInWithPhoneNumberUseCase;
  final VerifyPhoneNumberUseCase? verifyPhoneNumberUseCase;
  final GetCreateCurrentUserUseCase? getCreateCurrentUserUseCase;

  PhoneAuthCubit({
    this.signInWithPhoneNumberUseCase,
    this.verifyPhoneNumberUseCase,
    this.getCreateCurrentUserUseCase,
  }) : super(PhoneAuthInitial());

  Future<void> submitVerifyPhoneNumber(
      {String? phoneNumber, String? name}) async {
    emit(PhoneAuthLoading());
    try {
      await verifyPhoneNumberUseCase!.call(phoneNumber);
      emit(PhoneAuthSmsCodeReceived());
    } on SocketException catch (_) {
      emit(PhoneAuthFailure());
    } catch (_) {
      emit(PhoneAuthFailure());
    }
  }

  Future<void> submitSmsCode({String? smsPinCode}) async {
    emit(PhoneAuthLoading());
    try {
      await signInWithPhoneNumberUseCase!.call(smsPinCode);
      emit(PhoneAuthProfileInfo());
    } on SocketException catch (_) {
      emit(PhoneAuthFailure());
    } catch (_) {
      emit(PhoneAuthFailure());
    }
  }

  Future<void> submitProfileInfo({
    String? name,
    String? profileUrl,
    String? phoneNumber,
  }) async {
    try {
      await getCreateCurrentUserUseCase!.call(UserEntity(
          uid: "",
          name: name,
          email: "",
          phoneNumber: phoneNumber,
          isOnline: true,
          profileUrl: profileUrl,
          status: ""));
      emit(PhoneAuthSuccess());
    } on SocketException catch (_) {
      emit(PhoneAuthFailure());
    } catch (_) {
      emit(PhoneAuthFailure());
    }
  }

  void submitName({required String name}) {}
}
