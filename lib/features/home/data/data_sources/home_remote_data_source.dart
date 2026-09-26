import 'package:booky_app/constants.dart';
import 'package:booky_app/core/utils/api_service.dart';
import 'package:booky_app/features/home/data/models/book_model/BookModel.dart';

import '../../../../core/utils/functions/save_books_data.dart';
import '../../domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>>fetchFeaturedBooks();
  Future<List<BookEntity>>fetchNewestBooks();
}
class HomeRemoteDataSourceImpl extends HomeRemoteDataSource{
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async{
 var data= await apiService.get(endpoint:'volumes?filter=free-ebooks&q=programming');
 List<BookEntity> books = getBookList(data);
 saveBooksData(books,KFeaturedBox);
 return books;
  }


  @override
  Future<List<BookEntity>> fetchNewestBooks()async {
    var data= await apiService.get(endpoint:'volumes?filter=free-ebooks&q=programming&Sorting=newest');
    List<BookEntity> books = getBookList(data);
    return books;
  }
}
List<BookEntity> getBookList(Map<String, dynamic> data) {
  List<BookEntity>books=[];
  for(var bookMap in data['items']){
    books.add(BookModel.fromJson(bookMap));
  }
  return books;
}