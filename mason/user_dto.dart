import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:asodj_a_j_d_dhi_asih/infrastructure/dto.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto extends Dto<User> with _$UserDto {
  const factory UserDto({
   // TODO: fields
  }) = _UserDto;

  const UserDto._();

  factory UserDto.fromDomain(User domain) {
    return User(
      // TODO implement
    );
  }

  @override
  User toDomain() {
    return User(
      // TODO: implement
    );
  }

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);
}
