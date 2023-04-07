import 'package:injectable/injectable.dart';
import 'package:sample_project/domain/model/common/request.model.dart';
import 'package:sample_project/domain/model/display/collection/collection.model.dart';
import 'package:sample_project/domain/repository/display.repository.dart';
import 'package:sample_project/domain/usecase/base/api_usecase.dart';

@Injectable(as: ApiUsecase)
class GetCollections implements ApiUsecase {
  GetCollections(this.request);
  final Request request;

  @override
  Future<List<Collection>> execute(DisplayRepository displayRepository) async {
    final path = request.path;
    Map<String, String> queries = {...request.params};
    final response =
        await displayRepository.getCollections(path: path, queries: queries);

    return response;
  }
}
