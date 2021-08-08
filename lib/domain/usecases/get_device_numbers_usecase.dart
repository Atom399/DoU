import 'package:doyou/domain/entities/contact_entity.dart';
import 'package:doyou/domain/repositories/get_device_number_repository.dart';

class GetDeviceNumberUseCase {
  final GetDeviceNumberRepository? deviceNumberRepository;

  GetDeviceNumberUseCase({this.deviceNumberRepository});

  Future<List<ContactEntity>> call() async {
    return deviceNumberRepository!.getDeviceNumbers();
  }
}
