import '../../../../domain/model/user_info/user_info.model.dart';
import '../../../dto/user/user_info/user_info.dto.dart';

extension UserInfoEx on UserInfoDto {
  UserInfo toModel() {
    return UserInfo(
      title: title ?? '',
      body: body ?? '',
      id: id ?? 0,
      userId: userId ?? 0,
    );
  }
}
