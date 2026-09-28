part of 'fetured_book_cubit.dart';

@immutable
abstract class FeaturedBookState {}
class FeaturedBookInitial extends FeaturedBookState{}
class FeaturedBookLoading extends FeaturedBookState{}
class FeaturedBookFailure extends FeaturedBookState{
  String errMessage;

  FeaturedBookFailure(this.errMessage);
}
class FeaturedBookSuccess extends FeaturedBookState{
  List<BookEntity>books;

  FeaturedBookSuccess(this.books);
}