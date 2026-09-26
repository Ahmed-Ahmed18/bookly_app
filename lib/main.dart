import 'package:booky_app/constants.dart';
import 'package:booky_app/core/utils/app-router.dart';
import 'package:booky_app/features/home/domain/entities/book_entity.dart';
import 'package:booky_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'constants.dart';

void main() async{
  runApp(const Bookly());
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox(KFeaturedBox);
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false ,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor,
      textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
    );
  }
}


