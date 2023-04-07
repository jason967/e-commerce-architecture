import 'package:injectable/injectable.dart';
import 'package:sample_project/domain/model/common/request.model.dart';
import 'package:sample_project/domain/model/display/view_module/view_module.model.dart';
import 'package:sample_project/domain/repository/display.repository.dart';
import 'package:sample_project/domain/usecase/base/api_usecase.dart';

@injectable
class GetViewModules implements ApiUsecase {
  GetViewModules(this.request);
  final Request request;

  @override
  Future<List<ViewModule>> execute(DisplayRepository displayRepository) async {
    final path = request.path;
    final quries = {...request.params};
    final result =
        await displayRepository.getViewModules(path: path, queries: quries);

    return result;
  }
}
