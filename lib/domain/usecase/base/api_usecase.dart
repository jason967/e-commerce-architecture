import '../../repository/display.repository.dart';

abstract class ApiUsecase {
  Future<dynamic> execute(DisplayRepository displayRepository);
}
