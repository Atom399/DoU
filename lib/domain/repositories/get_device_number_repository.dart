import 'package:doyou/domain/entities/contact_entity.dart';

abstract class GetDeviceNumberRepository {
  Future<List<ContactEntity>> getDeviceNumbers();
}
