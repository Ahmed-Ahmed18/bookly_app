import 'package:dartz/dartz.dart';
import 'package:first/features/home/doman/repos/home_repo.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/use_cases/use_case.dart';
import '../entities/book_entity.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? p]) async {
    // TODO: implement call
    return await homeRepo.fetchFeaturedBooks();
  }
}
