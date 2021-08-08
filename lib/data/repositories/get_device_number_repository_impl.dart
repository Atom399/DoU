import 'package:doyou/data/local_datasource/local_datasource.dart';
import 'package:doyou/domain/entities/contact_entity.dart';
import 'package:doyou/domain/repositories/get_device_number_repository.dart';

class GetDeviceNumberRepositoryImpl implements GetDeviceNumberRepository {
  final LocalDataSource? localDataSource;

  GetDeviceNumberRepositoryImpl({this.localDataSource});
  @override
  Future<List<ContactEntity>> getDeviceNumbers() {
    return localDataSource!.getDeviceNumbers();
  }
}
