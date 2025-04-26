import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/core/errors/failures.dart';
import 'package:flutter_clean_architecture/core/usecase/usecase.dart';
import 'package:flutter_clean_architecture/features/domain/entities/group_entity.dart';
import 'package:flutter_clean_architecture/features/domain/repositories/group_repository.dart';

class GetAllGroupsRemoteUseCase
    implements UseCase<List<GroupEntity>, NoParams> {
  final GroupRepository repository;

  GetAllGroupsRemoteUseCase(this.repository);

  @override
  Future<Either<Failure, List<GroupEntity>>> call(NoParams params) async {
    return await repository.getAllGroupsRemote();
  }
}
