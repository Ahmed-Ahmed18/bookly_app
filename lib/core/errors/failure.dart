 import 'package:dio/dio.dart';

abstract class Failure {
  final message;

  Failure(this.message);
}
class serverFailure extends Failure{
  serverFailure(super.errorMessage);

  factory serverFailure.fromDioError(DioException e){
    switch (e.type){
      case DioExceptionType.connectionTimeout:
       return serverFailure('connection timeout with api server');
      case DioExceptionType.sendTimeout:
        return serverFailure('send timeout with api server');
      case DioExceptionType.receiveTimeout:
        return serverFailure('receive timeout with api server');
      case DioExceptionType.badCertificate:
        return serverFailure('badCertificate timeout with api server');
      case DioExceptionType.badResponse:
        return serverFailure.fromResponse(e.response!.statusCode!, e.response!.data);
      case DioExceptionType.cancel:
        return serverFailure('request to ApiServer was canceled');

      case DioExceptionType.connectionError:
        return serverFailure('no internet connection');

      case DioExceptionType.unknown:
        return serverFailure('Opps,there was a error please try again');

      case DioExceptionType.transformTimeout:
        return serverFailure('transform timeout with api server');

    }
  }
  factory serverFailure.fromResponse(int statusCode,dynamic response){
      if(statusCode==404){
        return serverFailure('your request not found,please try again');
      }else if(statusCode==500){
        return serverFailure('there is problem with a server,please try again');
      }else if(statusCode==400 || statusCode==401 || statusCode==403){
        return serverFailure(response['error']['message']);
      }else{
        return serverFailure('there was a error,please try again');
      }
  }
}