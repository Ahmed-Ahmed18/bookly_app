import 'package:booky_app/constants.dart';
import 'package:booky_app/features/home/domain/entities/book_entity.dart';

import 'package:booky_app/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  List<BookEntity>fetchFeaturedBooks();
  List<BookEntity>fetchNewestBooks();
}
class HomeLocalDataSourceImpl extends HomeLocalDataSource{
  @override
  List<BookEntity> fetchFeaturedBooks() {
var box=Hive.box<BookEntity>(KFeaturedBox);
return box.values.toList();
  }
  @override
  List<BookEntity> fetchNewestBooks() {
    // TODO: implement fetchNewestBooks
    throw UnimplementedError();
  }

}