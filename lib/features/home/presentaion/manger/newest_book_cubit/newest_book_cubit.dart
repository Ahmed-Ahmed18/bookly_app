import 'package:booky_app/features/home/domain/use_cases/fetch_newest_books_use_case.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/book_entity.dart';

part 'newest_book_states.dart';

class NewestBookCubit extends   Cubit<NewestBookStates>{
  final FetchNewestBooksUseCase fetchNewestBooksUseCases;

  NewestBookCubit(this.fetchNewestBooksUseCases) : super(NewestBookInitial());

  Future<void>fetchNewestBook()async{
    emit(NewestBookLoading());
    var result= await fetchNewestBooksUseCases.call();
    result.fold((failure)=>emit(NewestBookFailure(failure.message)),
        (books)=>emit(NewestBookSuccess(books)));
  }
}