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

class OverviewApi {

  final Dio _dio;

  final Serializers _serializers;

  const OverviewApi(this._dio, this._serializers);

  /// overviewV1HistoricalMarketcapAllAssetsDays
  /// 
  ///
  /// Parameters:
  /// * [groups] - When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
  /// * [limit] - The number of data points to return
  /// * [toTs] - Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  /// * [aggregate] - The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  /// * [fill] - Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  /// * [responseFormat] - The format of the data response in uppercase. It can be one of the following: JSON,CSV
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GENERICRESPONSE] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<GENERICRESPONSE>> overviewV1HistoricalMarketcapAllAssetsDays({ 
    BuiltList<String>? groups,
    int? limit = 30,
    int? toTs,
    int? aggregate = 1,
    bool? fill = true,
    String? responseFormat = 'JSON',
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/overview/v1/historical/marketcap/all/assets/days';
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
      if (groups != null) r'groups': encodeCollectionQueryParameter<String>(_serializers, groups, const FullType(BuiltList, [FullType(String)]), format: ListFormat.csv,),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (toTs != null) r'to_ts': encodeQueryParameter(_serializers, toTs, const FullType(int)),
      if (aggregate != null) r'aggregate': encodeQueryParameter(_serializers, aggregate, const FullType(int)),
      if (fill != null) r'fill': encodeQueryParameter(_serializers, fill, const FullType(bool)),
      if (responseFormat != null) r'response_format': encodeQueryParameter(_serializers, responseFormat, const FullType(String)),
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

  /// overviewV1HistoricalMarketcapAllAssetsHours
  /// 
  ///
  /// Parameters:
  /// * [groups] - When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
  /// * [limit] - The number of data points to return
  /// * [toTs] - Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  /// * [aggregate] - The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  /// * [fill] - Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  /// * [responseFormat] - The format of the data response in uppercase. It can be one of the following: JSON,CSV
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GENERICRESPONSE] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<GENERICRESPONSE>> overviewV1HistoricalMarketcapAllAssetsHours({ 
    BuiltList<String>? groups,
    int? limit = 30,
    int? toTs,
    int? aggregate = 1,
    bool? fill = true,
    String? responseFormat = 'JSON',
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/overview/v1/historical/marketcap/all/assets/hours';
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
      if (groups != null) r'groups': encodeCollectionQueryParameter<String>(_serializers, groups, const FullType(BuiltList, [FullType(String)]), format: ListFormat.csv,),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (toTs != null) r'to_ts': encodeQueryParameter(_serializers, toTs, const FullType(int)),
      if (aggregate != null) r'aggregate': encodeQueryParameter(_serializers, aggregate, const FullType(int)),
      if (fill != null) r'fill': encodeQueryParameter(_serializers, fill, const FullType(bool)),
      if (responseFormat != null) r'response_format': encodeQueryParameter(_serializers, responseFormat, const FullType(String)),
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

  /// overviewV1HistoricalMarketcapFtwAssetsDays
  /// 
  ///
  /// Parameters:
  /// * [groups] - When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
  /// * [limit] - The number of data points to return
  /// * [toTs] - Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  /// * [aggregate] - The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  /// * [fill] - Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  /// * [responseFormat] - The format of the data response in uppercase. It can be one of the following: JSON,CSV
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GENERICRESPONSE] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<GENERICRESPONSE>> overviewV1HistoricalMarketcapFtwAssetsDays({ 
    BuiltList<String>? groups,
    int? limit = 30,
    int? toTs,
    int? aggregate = 1,
    bool? fill = true,
    String? responseFormat = 'JSON',
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/overview/v1/historical/marketcap/ftw/assets/days';
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
      if (groups != null) r'groups': encodeCollectionQueryParameter<String>(_serializers, groups, const FullType(BuiltList, [FullType(String)]), format: ListFormat.csv,),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (toTs != null) r'to_ts': encodeQueryParameter(_serializers, toTs, const FullType(int)),
      if (aggregate != null) r'aggregate': encodeQueryParameter(_serializers, aggregate, const FullType(int)),
      if (fill != null) r'fill': encodeQueryParameter(_serializers, fill, const FullType(bool)),
      if (responseFormat != null) r'response_format': encodeQueryParameter(_serializers, responseFormat, const FullType(String)),
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

  /// overviewV1HistoricalMarketcapFtwAssetsHours
  /// 
  ///
  /// Parameters:
  /// * [groups] - When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
  /// * [limit] - The number of data points to return
  /// * [toTs] - Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  /// * [aggregate] - The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  /// * [fill] - Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  /// * [responseFormat] - The format of the data response in uppercase. It can be one of the following: JSON,CSV
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GENERICRESPONSE] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<GENERICRESPONSE>> overviewV1HistoricalMarketcapFtwAssetsHours({ 
    BuiltList<String>? groups,
    int? limit = 30,
    int? toTs,
    int? aggregate = 1,
    bool? fill = true,
    String? responseFormat = 'JSON',
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/overview/v1/historical/marketcap/ftw/assets/hours';
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
      if (groups != null) r'groups': encodeCollectionQueryParameter<String>(_serializers, groups, const FullType(BuiltList, [FullType(String)]), format: ListFormat.csv,),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (toTs != null) r'to_ts': encodeQueryParameter(_serializers, toTs, const FullType(int)),
      if (aggregate != null) r'aggregate': encodeQueryParameter(_serializers, aggregate, const FullType(int)),
      if (fill != null) r'fill': encodeQueryParameter(_serializers, fill, const FullType(bool)),
      if (responseFormat != null) r'response_format': encodeQueryParameter(_serializers, responseFormat, const FullType(String)),
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

  /// overviewV1LatestMarketcapAllTick
  /// 
  ///
  /// Parameters:
  /// * [groups] - When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GENERICRESPONSE] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<GENERICRESPONSE>> overviewV1LatestMarketcapAllTick({ 
    BuiltList<String>? groups,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/overview/v1/latest/marketcap/all/tick';
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
      if (groups != null) r'groups': encodeCollectionQueryParameter<String>(_serializers, groups, const FullType(BuiltList, [FullType(String)]), format: ListFormat.csv,),
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

  /// overviewV1LatestMarketcapFtwTick
  /// 
  ///
  /// Parameters:
  /// * [groups] - When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GENERICRESPONSE] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<GENERICRESPONSE>> overviewV1LatestMarketcapFtwTick({ 
    BuiltList<String>? groups,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/overview/v1/latest/marketcap/ftw/tick';
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
      if (groups != null) r'groups': encodeCollectionQueryParameter<String>(_serializers, groups, const FullType(BuiltList, [FullType(String)]), format: ListFormat.csv,),
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
