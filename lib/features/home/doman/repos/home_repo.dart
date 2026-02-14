import 'package:dartz/dartz.dart';
import 'package:first/core/errors/failure.dart';
import 'package:first/features/home/doman/entities/book_entity.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks();

  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks();
}
