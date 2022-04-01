import 'dart:io';

import 'package:dio/dio.dart';

class Api {
  Api._();
  static final _api = Api._();
  factory Api() {
    return _api;
  }

  final Dio _dio = Dio(BaseOptions(
    baseUrl: "",
    connectTimeout: 5000,
    receiveTimeout: 3000,
    headers: {
      HttpHeaders.acceptHeader: "application/json",
      HttpHeaders.contentTypeHeader: "application/json",
      HttpHeaders.authorizationHeader: ""
    },
  ));
  Future<Response> httpGet(String path) async {
    return await _dio.request(
      path,
      options: Options(
        method: "GET",
      ),
    );
  }

  Future<Response> httpPost(String path, Map<String, dynamic> body) async {
    return await _dio.request(
      path,
      data: body,
      options: Options(
        method: "POST",
        contentType: "application/json",
      ),
    );
  }

  Future<Response> httpPut(String path, Map<String, dynamic> body) async {
    return await _dio.put(
      path,
      data: body,
      options: Options(
        method: "PUT",
        contentType: "application/json",
      ),
    );
  }

  Future<Response> httpDelete(String path) async {
    return await _dio.delete(
      path,
      options: Options(
        method: "DELETE",
      ),
    );
  }

  Future<Response> httpPatch(String path, Map<String, dynamic> body) async {
    return await _dio.patch(
      path,
      data: body,
      options: Options(
        method: "PATCH",
        contentType: "application/json",
      ),
    );
  }

  Future<Response> httpHead(String path) async {
    return await _dio.head(
      path,
      options: Options(
        method: "HEAD",
      ),
    );
  }

  Future<Response> postWithFile(String path, File file) async {
    String fileName = file.path.split('/').last;
    FormData formData = FormData.fromMap({
      "file": await MultipartFile.fromFile(file.path, filename: fileName),
    });
    return await _dio.request(path,
        data: formData, options: Options(method: "POST"));
  }
}
