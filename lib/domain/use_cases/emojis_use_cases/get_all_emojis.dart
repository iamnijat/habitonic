import 'package:flutter/cupertino.dart';

import '../../../core/either.dart';
import '../../../core/failures.dart';
import '../../../core/use_cases/use_case.dart';
import '../../repositories/emojis_repository.dart';

class GetAllEmojis
    extends UseCase<Future<Either<Failure, List<String>>>, BuildContext> {
  GetAllEmojis(this._repository);

  final EmojisRepository _repository;

  @override
  Future<Either<Failure, List<String>>> call(BuildContext params) async {
    return await _repository.allEmojis(params);
  }
}
