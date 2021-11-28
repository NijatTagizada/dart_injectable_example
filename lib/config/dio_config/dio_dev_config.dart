import 'package:injectable/injectable.dart';
import 'dio_base.dart';

@dev
@Injectable(as: DioBase)
class DioDevConfig extends DioBase {
  @override
  String baseUrl() {
    return 'https://jsonplaceholder.typicode.com/';
  }
}
