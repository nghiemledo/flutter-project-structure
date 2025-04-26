import 'package:flutter_clean_architecture/features/domain/entities/user_entity.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class UserModel extends UserEntity {
  const UserModel({
    id,
    userPhoneNumber,
    fullName,
    userAvatar,
    lastSeenDateTime,
    lastMessageBody,
    lastMessageDateTime,
    lastMessageCategory,
    lastMessageType,
    lastMessageIsReadByTargetUser,
    isConfirm,
    notReadMessageCount,
    verifyCode,
    verifyProfile,
  }) : super(
          id: id,
          userPhoneNumber: userPhoneNumber,
          fullName: fullName,
          userAvatar: userAvatar,
          lastSeenDateTime: lastSeenDateTime,
          lastMessageBody: lastMessageBody,
          lastMessageDateTime: lastMessageDateTime,
          lastMessageCategory: lastMessageCategory,
          lastMessageType: lastMessageType,
          lastMessageIsReadByTargetUser: lastMessageIsReadByTargetUser,
          isConfirm: isConfirm,
          notReadMessageCount: notReadMessageCount,
          verifyCode: verifyCode,
          verifyProfile: verifyProfile,
        );

  // factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  // Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
