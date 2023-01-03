//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/api_util.dart';
import 'package:openapi/src/model/error.dart';
import 'package:openapi/src/model/genericresponse.dart';

class NewsApi {

  final Dio _dio;

  final Serializers _serializers;

  const NewsApi(this._dio, this._serializers);

  /// newsV1ArticleList
  /// 
  ///
  /// Parameters:
  /// * [sourceIds] - Get articles from specific sources; either by their ids or keys
  /// * [lang] - The article Preferred language - English (EN), Portuguese (PT), Espanol (ES)
  /// * [categories] - News article categories to return
  /// * [excludeCategories] - News article categories to exclude from results
  /// * [toTs] - Articles published on or before this timestamp
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GENERICRESPONSE] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<GENERICRESPONSE>> newsV1ArticleList({ 
    BuiltList<String>? sourceIds,
    String? lang = 'EN',
    BuiltList<String>? categories,
    BuiltList<String>? excludeCategories,
    int? toTs = -1,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/news/v1/article/list';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (sourceIds != null) r'source_ids': encodeCollectionQueryParameter<String>(_serializers, sourceIds, const FullType(BuiltList, [FullType(String)]), format: ListFormat.csv,),
      if (lang != null) r'lang': encodeQueryParameter(_serializers, lang, const FullType(String)),
      if (categories != null) r'categories': encodeCollectionQueryParameter<String>(_serializers, categories, const FullType(BuiltList, [FullType(String)]), format: ListFormat.csv,),
      if (excludeCategories != null) r'exclude_categories': encodeCollectionQueryParameter<String>(_serializers, excludeCategories, const FullType(BuiltList, [FullType(String)]), format: ListFormat.csv,),
      if (toTs != null) r'to_ts': encodeQueryParameter(_serializers, toTs, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    GENERICRESPONSE _responseData;

    try {
      const _responseType = FullType(GENERICRESPONSE);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as GENERICRESPONSE;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<GENERICRESPONSE>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// newsV1CategoryList
  /// 
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GENERICRESPONSE] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<GENERICRESPONSE>> newsV1CategoryList({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/news/v1/category/list';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    GENERICRESPONSE _responseData;

    try {
      const _responseType = FullType(GENERICRESPONSE);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as GENERICRESPONSE;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<GENERICRESPONSE>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// newsV1SourceList
  /// 
  ///
  /// Parameters:
  /// * [lang] - The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES)
  /// * [type] - RSS, API, TWITTER
  /// * [status] - The status for the  article source entry. Allowed values: ACTIVE, INACTIVE
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GENERICRESPONSE] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<GENERICRESPONSE>> newsV1SourceList({ 
    String? lang = 'EN',
    String? type = 'RSS',
    String? status = 'ACTIVE',
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/news/v1/source/list';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (lang != null) r'lang': encodeQueryParameter(_serializers, lang, const FullType(String)),
      if (type != null) r'type': encodeQueryParameter(_serializers, type, const FullType(String)),
      if (status != null) r'status': encodeQueryParameter(_serializers, status, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    GENERICRESPONSE _responseData;

    try {
      const _responseType = FullType(GENERICRESPONSE);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as GENERICRESPONSE;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<GENERICRESPONSE>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

}
