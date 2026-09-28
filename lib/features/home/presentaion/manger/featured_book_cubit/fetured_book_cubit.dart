import 'package:booky_app/features/home/domain/entities/book_entity.dart';
import 'package:booky_app/features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'featured_book_state.dart';

class FeturedBookCubit extends Cubit<FeaturedBookState> {
  final FetchFeaturedBooksUseCase featuredBooksUseCase;

  FeturedBookCubit(this.featuredBooksUseCase):super(FeaturedBookInitial());

  Future<void>fetchFeaturedBook() async{
    emit(FeaturedBookLoading());
    var result= await featuredBooksUseCase.call();
    result.fold((failure)=>emit(FeaturedBookFailure(failure.message)),
               (books)=>emit(FeaturedBookSuccess(books)));
  }
}