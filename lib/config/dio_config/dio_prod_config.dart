import 'package:injectable/injectable.dart';
import 'dio_base.dart';

@prod
@Injectable(as: DioBase)
class DioProdConfig extends DioBase {
  @override
  String baseUrl() {
    // Change to Prod Url
    return 'https://jsonplaceholder.typicode.com/';
  }
}
