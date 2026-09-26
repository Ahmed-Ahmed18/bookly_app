import 'package:dio/dio.dart';

class ApiService {
  static const apiKey='AIzaSyD77s1gxce0QuZ-ngVNutjVvcHB7VHOzc0';
  final Dio _dio;
  final baseUrl='https://www.googleapis.com/books/v1/';
  ApiService(this._dio);

 Future<Map<String,dynamic>> get({required String endpoint})async{
  var response= await _dio.get('$baseUrl$endpoint',
    queryParameters: {
      'key': apiKey,
    },);
  return response.data;
  }
}