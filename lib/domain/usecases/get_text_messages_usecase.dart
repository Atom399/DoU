import 'package:doyou/domain/entities/text_message_entity.dart';
import 'package:doyou/domain/repositories/firebase_repository.dart';

class GetTextMessagesUseCase {
  final FirebaseRepository? repository;

  GetTextMessagesUseCase({this.repository});

  Stream<List<TextMessageEntity>> call(String channelId) {
    return repository!.getMessages(channelId);
  }
}
