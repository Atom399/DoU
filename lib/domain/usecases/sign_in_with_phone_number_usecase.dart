import 'package:doyou/domain/repositories/firebase_repository.dart';

class SignInWithPhoneNumberUseCase {
  final FirebaseRepository? repository;

  SignInWithPhoneNumberUseCase({this.repository});

  Future<void> call(String? smsPinCode) async {
    return await repository!.signInWithPhoneNumber(smsPinCode);
  }
}
