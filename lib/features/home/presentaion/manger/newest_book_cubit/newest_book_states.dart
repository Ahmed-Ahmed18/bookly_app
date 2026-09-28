part of 'newest_book_cubit.dart';


@immutable
abstract class NewestBookStates {}
class NewestBookInitial extends NewestBookStates{}
class NewestBookLoading extends NewestBookStates{}
class NewestBookFailure extends NewestBookStates{
  String errMessage;

  NewestBookFailure(this.errMessage);
}
class NewestBookSuccess extends NewestBookStates{
  List<BookEntity> books;

  NewestBookSuccess(this.books);

}