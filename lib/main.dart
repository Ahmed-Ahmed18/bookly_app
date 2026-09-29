import 'package:booky_app/constants.dart';
import 'package:booky_app/core/utils/app-router.dart';
import 'package:booky_app/core/utils/simple_bloc_observer.dart';
import 'package:booky_app/features/home/data/repos/home_repo_impl.dart';
import 'package:booky_app/features/home/domain/entities/book_entity.dart';
import 'package:booky_app/features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:booky_app/features/home/presentaion/manger/featured_book_cubit/fetured_book_cubit.dart';
import 'package:booky_app/features/home/presentaion/manger/newest_book_cubit/newest_book_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'constants.dart';
import 'core/utils/functions/setup_service_locator.dart';
import 'features/home/domain/use_cases/fetch_newest_books_use_case.dart';

void main() async{
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  setupServiceLocator();
  await Hive.openBox<BookEntity>(KFeaturedBox);
  await Hive.openBox<BookEntity>(KNewestBox);
  Bloc.observer=SimpleBlocObserver();
  runApp(const Bookly());
}
class Bookly extends StatelessWidget {
  const Bookly({super.key});


  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context){
          return FeturedBookCubit(
            FetchFeaturedBooksUseCase(
            getIt.get<HomeRepoImpl>()
       ,)
       ,);
    }),
        BlocProvider(create: (context){
          return NewestBookCubit(
            FetchNewestBooksUseCase(
              getIt.get<HomeRepoImpl>()
              ,)
            ,);
        }),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false ,
        theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}


