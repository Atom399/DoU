import 'package:doyou/domain/entities/my_chat_entity.dart';
import 'package:doyou/domain/repositories/firebase_repository.dart';

class GetMyChatUseCase {
  final FirebaseRepository? repository;

  GetMyChatUseCase({this.repository});

  Stream<List<MyChatEntity>> call(String? uid) {
    return repository!.getMyChat(uid);
  }
}
