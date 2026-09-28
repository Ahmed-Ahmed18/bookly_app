import 'package:booky_app/features/home/domain/entities/book_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'featured_book_state.dart';

class FeturedBookCubit extends Cubit<FeaturedBookState> {
  FeturedBookCubit(super.initialState);
}