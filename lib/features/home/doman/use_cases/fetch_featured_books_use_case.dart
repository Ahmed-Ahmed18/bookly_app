import 'package:dartz/dartz.dart';
import 'package:first/features/home/doman/repos/home_repo.dart';

import '../../../../core/errors/failure.dart';
import '../entities/book_entity.dart';

class FetchFeaturedBooksUseCase {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() {
    // check permission
    return homeRepo.fetchFeaturedBooks();
  }
}
