import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:new_app/core/constants/constants.dart';
import 'package:new_app/core/resources/data_state.dart';
import 'package:new_app/feature/daily_news/data/data_source/remote/news_api_service.dart';
import 'package:new_app/feature/daily_news/data/models/article_model.dart';
import 'package:new_app/feature/daily_news/domain/repository/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  final NewsApiService _newsApiService;
  ArticleRepositoryImpl(this._newsApiService);

  @override
  Future<DataState<List<ArticleModel>>> getNewsArticles() async {
    final httpResponse = await _newsApiService.getNewsArticles(
      apiKey: Constants.apiKey,
      category: Constants.category,
      country: Constants.category,
    );
    try {
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSucess(httpResponse.data);
      }
      return DataFailed(
        DioException(
          message: httpResponse.response.statusMessage,
          requestOptions: httpResponse.response.requestOptions,
        ),
      );
    } on DioException catch (err) {
      debugPrint("Exception $err");
      return DataFailed(err);
    }
  }
}
