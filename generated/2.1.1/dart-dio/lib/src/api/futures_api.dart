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

class FuturesApi {

  final Dio _dio;

  final Serializers _serializers;

  const FuturesApi(this._dio, this._serializers);

  /// futuresV1HistoricalDays
  /// 
  ///
  /// Parameters:
  /// * [market] - The exchange to obtain data from
  /// * [instrument] - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  /// * [groups] - When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME
  /// * [limit] - The number of data points to return
  /// * [toTs] - Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  /// * [aggregate] - The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  /// * [fill] - Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  /// * [mappingPriority] - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
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
  Future<Response<GENERICRESPONSE>> futuresV1HistoricalDays({ 
    required String market,
    required String instrument,
    BuiltList<String>? groups,
    int? limit = 30,
    int? toTs,
    int? aggregate = 1,
    bool? fill = true,
    String? mappingPriority = 'CHECK_MAPPED_FIRST',
    String? responseFormat = 'JSON',
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/futures/v1/historical/days';
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
      r'market': encodeQueryParameter(_serializers, market, const FullType(String)),
      r'instrument': encodeQueryParameter(_serializers, instrument, const FullType(String)),
      if (groups != null) r'groups': encodeCollectionQueryParameter<String>(_serializers, groups, const FullType(BuiltList, [FullType(String)]), format: ListFormat.csv,),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (toTs != null) r'to_ts': encodeQueryParameter(_serializers, toTs, const FullType(int)),
      if (aggregate != null) r'aggregate': encodeQueryParameter(_serializers, aggregate, const FullType(int)),
      if (fill != null) r'fill': encodeQueryParameter(_serializers, fill, const FullType(bool)),
      if (mappingPriority != null) r'mapping_priority': encodeQueryParameter(_serializers, mappingPriority, const FullType(String)),
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

  /// futuresV1HistoricalFundingRateDays
  /// 
  ///
  /// Parameters:
  /// * [market] - The exchange to obtain data from
  /// * [instrument] - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  /// * [groups] - When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE
  /// * [limit] - The number of data points to return
  /// * [toTs] - Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  /// * [aggregate] - The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  /// * [fill] - Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  /// * [mappingPriority] - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
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
  Future<Response<GENERICRESPONSE>> futuresV1HistoricalFundingRateDays({ 
    required String market,
    required String instrument,
    BuiltList<String>? groups,
    int? limit = 30,
    int? toTs,
    int? aggregate = 1,
    bool? fill = true,
    String? mappingPriority = 'CHECK_MAPPED_FIRST',
    String? responseFormat = 'JSON',
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/futures/v1/historical/funding-rate/days';
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
      r'market': encodeQueryParameter(_serializers, market, const FullType(String)),
      r'instrument': encodeQueryParameter(_serializers, instrument, const FullType(String)),
      if (groups != null) r'groups': encodeCollectionQueryParameter<String>(_serializers, groups, const FullType(BuiltList, [FullType(String)]), format: ListFormat.csv,),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (toTs != null) r'to_ts': encodeQueryParameter(_serializers, toTs, const FullType(int)),
      if (aggregate != null) r'aggregate': encodeQueryParameter(_serializers, aggregate, const FullType(int)),
      if (fill != null) r'fill': encodeQueryParameter(_serializers, fill, const FullType(bool)),
      if (mappingPriority != null) r'mapping_priority': encodeQueryParameter(_serializers, mappingPriority, const FullType(String)),
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

  /// futuresV1HistoricalFundingRateHours
  /// 
  ///
  /// Parameters:
  /// * [market] - The exchange to obtain data from
  /// * [instrument] - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  /// * [groups] - When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE
  /// * [limit] - The number of data points to return
  /// * [toTs] - Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  /// * [aggregate] - The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  /// * [fill] - Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  /// * [mappingPriority] - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
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
  Future<Response<GENERICRESPONSE>> futuresV1HistoricalFundingRateHours({ 
    required String market,
    required String instrument,
    BuiltList<String>? groups,
    int? limit = 30,
    int? toTs,
    int? aggregate = 1,
    bool? fill = true,
    String? mappingPriority = 'CHECK_MAPPED_FIRST',
    String? responseFormat = 'JSON',
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/futures/v1/historical/funding-rate/hours';
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
      r'market': encodeQueryParameter(_serializers, market, const FullType(String)),
      r'instrument': encodeQueryParameter(_serializers, instrument, const FullType(String)),
      if (groups != null) r'groups': encodeCollectionQueryParameter<String>(_serializers, groups, const FullType(BuiltList, [FullType(String)]), format: ListFormat.csv,),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (toTs != null) r'to_ts': encodeQueryParameter(_serializers, toTs, const FullType(int)),
      if (aggregate != null) r'aggregate': encodeQueryParameter(_serializers, aggregate, const FullType(int)),
      if (fill != null) r'fill': encodeQueryParameter(_serializers, fill, const FullType(bool)),
      if (mappingPriority != null) r'mapping_priority': encodeQueryParameter(_serializers, mappingPriority, const FullType(String)),
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

  /// futuresV1HistoricalFundingRateMessages
  /// 
  ///
  /// Parameters:
  /// * [market] - The exchange to obtain data from
  /// * [instrument] - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  /// * [afterTs] - Unix timestamp in seconds of the earliest funding rate message in the response
  /// * [lastCcseq] - The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.
  /// * [limit] - The maximum number of funding rate messages to return
  /// * [mappingPriority] - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  /// * [responseFormat] - The format of the data response in uppercase. It can be one of the following: JSON,CSV
  /// * [return404OnEmptyResponse] - If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GENERICRESPONSE] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<GENERICRESPONSE>> futuresV1HistoricalFundingRateMessages({ 
    required String market,
    required String instrument,
    int? afterTs,
    int? lastCcseq = 0,
    int? limit = 100,
    String? mappingPriority = 'CHECK_MAPPED_FIRST',
    String? responseFormat = 'JSON',
    bool? return404OnEmptyResponse = false,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/futures/v1/historical/funding-rate-messages';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'api_key_header',
            'keyName': 'authorization',
            'where': 'header',
          },{
            'type': 'apiKey',
            'name': 'api_key_query',
            'keyName': 'api_key',
            'where': 'query',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'market': encodeQueryParameter(_serializers, market, const FullType(String)),
      r'instrument': encodeQueryParameter(_serializers, instrument, const FullType(String)),
      if (afterTs != null) r'after_ts': encodeQueryParameter(_serializers, afterTs, const FullType(int)),
      if (lastCcseq != null) r'last_ccseq': encodeQueryParameter(_serializers, lastCcseq, const FullType(int)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (mappingPriority != null) r'mapping_priority': encodeQueryParameter(_serializers, mappingPriority, const FullType(String)),
      if (responseFormat != null) r'response_format': encodeQueryParameter(_serializers, responseFormat, const FullType(String)),
      if (return404OnEmptyResponse != null) r'return_404_on_empty_response': encodeQueryParameter(_serializers, return404OnEmptyResponse, const FullType(bool)),
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

  /// futuresV1HistoricalFundingRateMessagesHour
  /// 
  ///
  /// Parameters:
  /// * [market] - The exchange to obtain data from
  /// * [instrument] - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  /// * [hourTs] - Unix timestamp in seconds for the hour containing the funding rate updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all funding rate updates in that hour.
  /// * [mappingPriority] - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  /// * [responseFormat] - The format of the data response in uppercase. It can be one of the following: JSON,CSV
  /// * [return404OnEmptyResponse] - If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GENERICRESPONSE] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<GENERICRESPONSE>> futuresV1HistoricalFundingRateMessagesHour({ 
    required String market,
    required String instrument,
    int? hourTs,
    String? mappingPriority = 'CHECK_MAPPED_FIRST',
    String? responseFormat = 'JSON',
    bool? return404OnEmptyResponse = false,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/futures/v1/historical/funding-rate-messages/hour';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'api_key_header',
            'keyName': 'authorization',
            'where': 'header',
          },{
            'type': 'apiKey',
            'name': 'api_key_query',
            'keyName': 'api_key',
            'where': 'query',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'market': encodeQueryParameter(_serializers, market, const FullType(String)),
      r'instrument': encodeQueryParameter(_serializers, instrument, const FullType(String)),
      if (hourTs != null) r'hour_ts': encodeQueryParameter(_serializers, hourTs, const FullType(int)),
      if (mappingPriority != null) r'mapping_priority': encodeQueryParameter(_serializers, mappingPriority, const FullType(String)),
      if (responseFormat != null) r'response_format': encodeQueryParameter(_serializers, responseFormat, const FullType(String)),
      if (return404OnEmptyResponse != null) r'return_404_on_empty_response': encodeQueryParameter(_serializers, return404OnEmptyResponse, const FullType(bool)),
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

  /// futuresV1HistoricalFundingRateMinutes
  /// 
  ///
  /// Parameters:
  /// * [market] - The exchange to obtain data from
  /// * [instrument] - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  /// * [groups] - When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE
  /// * [limit] - The number of data points to return
  /// * [toTs] - Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  /// * [aggregate] - The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  /// * [fill] - Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  /// * [mappingPriority] - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
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
  Future<Response<GENERICRESPONSE>> futuresV1HistoricalFundingRateMinutes({ 
    required String market,
    required String instrument,
    BuiltList<String>? groups,
    int? limit = 30,
    int? toTs,
    int? aggregate = 1,
    bool? fill = true,
    String? mappingPriority = 'CHECK_MAPPED_FIRST',
    String? responseFormat = 'JSON',
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/futures/v1/historical/funding-rate/minutes';
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
      r'market': encodeQueryParameter(_serializers, market, const FullType(String)),
      r'instrument': encodeQueryParameter(_serializers, instrument, const FullType(String)),
      if (groups != null) r'groups': encodeCollectionQueryParameter<String>(_serializers, groups, const FullType(BuiltList, [FullType(String)]), format: ListFormat.csv,),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (toTs != null) r'to_ts': encodeQueryParameter(_serializers, toTs, const FullType(int)),
      if (aggregate != null) r'aggregate': encodeQueryParameter(_serializers, aggregate, const FullType(int)),
      if (fill != null) r'fill': encodeQueryParameter(_serializers, fill, const FullType(bool)),
      if (mappingPriority != null) r'mapping_priority': encodeQueryParameter(_serializers, mappingPriority, const FullType(String)),
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

  /// futuresV1HistoricalHours
  /// 
  ///
  /// Parameters:
  /// * [market] - The exchange to obtain data from
  /// * [instrument] - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  /// * [groups] - When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME
  /// * [limit] - The number of data points to return
  /// * [toTs] - Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  /// * [aggregate] - The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  /// * [fill] - Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  /// * [mappingPriority] - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
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
  Future<Response<GENERICRESPONSE>> futuresV1HistoricalHours({ 
    required String market,
    required String instrument,
    BuiltList<String>? groups,
    int? limit = 30,
    int? toTs,
    int? aggregate = 1,
    bool? fill = true,
    String? mappingPriority = 'CHECK_MAPPED_FIRST',
    String? responseFormat = 'JSON',
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/futures/v1/historical/hours';
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
      r'market': encodeQueryParameter(_serializers, market, const FullType(String)),
      r'instrument': encodeQueryParameter(_serializers, instrument, const FullType(String)),
      if (groups != null) r'groups': encodeCollectionQueryParameter<String>(_serializers, groups, const FullType(BuiltList, [FullType(String)]), format: ListFormat.csv,),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (toTs != null) r'to_ts': encodeQueryParameter(_serializers, toTs, const FullType(int)),
      if (aggregate != null) r'aggregate': encodeQueryParameter(_serializers, aggregate, const FullType(int)),
      if (fill != null) r'fill': encodeQueryParameter(_serializers, fill, const FullType(bool)),
      if (mappingPriority != null) r'mapping_priority': encodeQueryParameter(_serializers, mappingPriority, const FullType(String)),
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

  /// futuresV1HistoricalMinutes
  /// 
  ///
  /// Parameters:
  /// * [market] - The exchange to obtain data from
  /// * [instrument] - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  /// * [groups] - When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME
  /// * [limit] - The number of data points to return
  /// * [toTs] - Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  /// * [aggregate] - The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  /// * [fill] - Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  /// * [mappingPriority] - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
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
  Future<Response<GENERICRESPONSE>> futuresV1HistoricalMinutes({ 
    required String market,
    required String instrument,
    BuiltList<String>? groups,
    int? limit = 30,
    int? toTs,
    int? aggregate = 1,
    bool? fill = true,
    String? mappingPriority = 'CHECK_MAPPED_FIRST',
    String? responseFormat = 'JSON',
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/futures/v1/historical/minutes';
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
      r'market': encodeQueryParameter(_serializers, market, const FullType(String)),
      r'instrument': encodeQueryParameter(_serializers, instrument, const FullType(String)),
      if (groups != null) r'groups': encodeCollectionQueryParameter<String>(_serializers, groups, const FullType(BuiltList, [FullType(String)]), format: ListFormat.csv,),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (toTs != null) r'to_ts': encodeQueryParameter(_serializers, toTs, const FullType(int)),
      if (aggregate != null) r'aggregate': encodeQueryParameter(_serializers, aggregate, const FullType(int)),
      if (fill != null) r'fill': encodeQueryParameter(_serializers, fill, const FullType(bool)),
      if (mappingPriority != null) r'mapping_priority': encodeQueryParameter(_serializers, mappingPriority, const FullType(String)),
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

  /// futuresV1HistoricalOpenInterestDays
  /// 
  ///
  /// Parameters:
  /// * [market] - The exchange to obtain data from
  /// * [instrument] - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  /// * [groups] - When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE
  /// * [limit] - The number of data points to return
  /// * [toTs] - Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  /// * [aggregate] - The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  /// * [fill] - Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  /// * [mappingPriority] - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
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
  Future<Response<GENERICRESPONSE>> futuresV1HistoricalOpenInterestDays({ 
    required String market,
    required String instrument,
    BuiltList<String>? groups,
    int? limit = 30,
    int? toTs,
    int? aggregate = 1,
    bool? fill = true,
    String? mappingPriority = 'CHECK_MAPPED_FIRST',
    String? responseFormat = 'JSON',
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/futures/v1/historical/open-interest/days';
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
      r'market': encodeQueryParameter(_serializers, market, const FullType(String)),
      r'instrument': encodeQueryParameter(_serializers, instrument, const FullType(String)),
      if (groups != null) r'groups': encodeCollectionQueryParameter<String>(_serializers, groups, const FullType(BuiltList, [FullType(String)]), format: ListFormat.csv,),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (toTs != null) r'to_ts': encodeQueryParameter(_serializers, toTs, const FullType(int)),
      if (aggregate != null) r'aggregate': encodeQueryParameter(_serializers, aggregate, const FullType(int)),
      if (fill != null) r'fill': encodeQueryParameter(_serializers, fill, const FullType(bool)),
      if (mappingPriority != null) r'mapping_priority': encodeQueryParameter(_serializers, mappingPriority, const FullType(String)),
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

  /// futuresV1HistoricalOpenInterestHours
  /// 
  ///
  /// Parameters:
  /// * [market] - The exchange to obtain data from
  /// * [instrument] - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  /// * [groups] - When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE
  /// * [limit] - The number of data points to return
  /// * [toTs] - Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  /// * [aggregate] - The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  /// * [fill] - Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  /// * [mappingPriority] - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
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
  Future<Response<GENERICRESPONSE>> futuresV1HistoricalOpenInterestHours({ 
    required String market,
    required String instrument,
    BuiltList<String>? groups,
    int? limit = 30,
    int? toTs,
    int? aggregate = 1,
    bool? fill = true,
    String? mappingPriority = 'CHECK_MAPPED_FIRST',
    String? responseFormat = 'JSON',
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/futures/v1/historical/open-interest/hours';
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
      r'market': encodeQueryParameter(_serializers, market, const FullType(String)),
      r'instrument': encodeQueryParameter(_serializers, instrument, const FullType(String)),
      if (groups != null) r'groups': encodeCollectionQueryParameter<String>(_serializers, groups, const FullType(BuiltList, [FullType(String)]), format: ListFormat.csv,),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (toTs != null) r'to_ts': encodeQueryParameter(_serializers, toTs, const FullType(int)),
      if (aggregate != null) r'aggregate': encodeQueryParameter(_serializers, aggregate, const FullType(int)),
      if (fill != null) r'fill': encodeQueryParameter(_serializers, fill, const FullType(bool)),
      if (mappingPriority != null) r'mapping_priority': encodeQueryParameter(_serializers, mappingPriority, const FullType(String)),
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

  /// futuresV1HistoricalOpenInterestMessages
  /// 
  ///
  /// Parameters:
  /// * [market] - The exchange to obtain data from
  /// * [instrument] - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  /// * [afterTs] - Unix timestamp in seconds of the earliest open interest message in the response
  /// * [lastCcseq] - The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.
  /// * [limit] - The maximum number of open interest messages to return
  /// * [mappingPriority] - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  /// * [responseFormat] - The format of the data response in uppercase. It can be one of the following: JSON,CSV
  /// * [return404OnEmptyResponse] - If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GENERICRESPONSE] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<GENERICRESPONSE>> futuresV1HistoricalOpenInterestMessages({ 
    required String market,
    required String instrument,
    int? afterTs,
    int? lastCcseq = 0,
    int? limit = 100,
    String? mappingPriority = 'CHECK_MAPPED_FIRST',
    String? responseFormat = 'JSON',
    bool? return404OnEmptyResponse = false,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/futures/v1/historical/open-interest-messages';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'api_key_header',
            'keyName': 'authorization',
            'where': 'header',
          },{
            'type': 'apiKey',
            'name': 'api_key_query',
            'keyName': 'api_key',
            'where': 'query',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'market': encodeQueryParameter(_serializers, market, const FullType(String)),
      r'instrument': encodeQueryParameter(_serializers, instrument, const FullType(String)),
      if (afterTs != null) r'after_ts': encodeQueryParameter(_serializers, afterTs, const FullType(int)),
      if (lastCcseq != null) r'last_ccseq': encodeQueryParameter(_serializers, lastCcseq, const FullType(int)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (mappingPriority != null) r'mapping_priority': encodeQueryParameter(_serializers, mappingPriority, const FullType(String)),
      if (responseFormat != null) r'response_format': encodeQueryParameter(_serializers, responseFormat, const FullType(String)),
      if (return404OnEmptyResponse != null) r'return_404_on_empty_response': encodeQueryParameter(_serializers, return404OnEmptyResponse, const FullType(bool)),
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

  /// futuresV1HistoricalOpenInterestMessagesHour
  /// 
  ///
  /// Parameters:
  /// * [market] - The exchange to obtain data from
  /// * [instrument] - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  /// * [hourTs] - Unix timestamp in seconds for the hour containing the open interest updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all open interest updates in that hour.
  /// * [mappingPriority] - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  /// * [responseFormat] - The format of the data response in uppercase. It can be one of the following: JSON,CSV
  /// * [return404OnEmptyResponse] - If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GENERICRESPONSE] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<GENERICRESPONSE>> futuresV1HistoricalOpenInterestMessagesHour({ 
    required String market,
    required String instrument,
    int? hourTs,
    String? mappingPriority = 'CHECK_MAPPED_FIRST',
    String? responseFormat = 'JSON',
    bool? return404OnEmptyResponse = false,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/futures/v1/historical/open-interest-messages/hour';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'api_key_header',
            'keyName': 'authorization',
            'where': 'header',
          },{
            'type': 'apiKey',
            'name': 'api_key_query',
            'keyName': 'api_key',
            'where': 'query',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'market': encodeQueryParameter(_serializers, market, const FullType(String)),
      r'instrument': encodeQueryParameter(_serializers, instrument, const FullType(String)),
      if (hourTs != null) r'hour_ts': encodeQueryParameter(_serializers, hourTs, const FullType(int)),
      if (mappingPriority != null) r'mapping_priority': encodeQueryParameter(_serializers, mappingPriority, const FullType(String)),
      if (responseFormat != null) r'response_format': encodeQueryParameter(_serializers, responseFormat, const FullType(String)),
      if (return404OnEmptyResponse != null) r'return_404_on_empty_response': encodeQueryParameter(_serializers, return404OnEmptyResponse, const FullType(bool)),
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

  /// futuresV1HistoricalOpenInterestMinutes
  /// 
  ///
  /// Parameters:
  /// * [market] - The exchange to obtain data from
  /// * [instrument] - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  /// * [groups] - When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE
  /// * [limit] - The number of data points to return
  /// * [toTs] - Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  /// * [aggregate] - The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  /// * [fill] - Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  /// * [mappingPriority] - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
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
  Future<Response<GENERICRESPONSE>> futuresV1HistoricalOpenInterestMinutes({ 
    required String market,
    required String instrument,
    BuiltList<String>? groups,
    int? limit = 30,
    int? toTs,
    int? aggregate = 1,
    bool? fill = true,
    String? mappingPriority = 'CHECK_MAPPED_FIRST',
    String? responseFormat = 'JSON',
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/futures/v1/historical/open-interest/minutes';
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
      r'market': encodeQueryParameter(_serializers, market, const FullType(String)),
      r'instrument': encodeQueryParameter(_serializers, instrument, const FullType(String)),
      if (groups != null) r'groups': encodeCollectionQueryParameter<String>(_serializers, groups, const FullType(BuiltList, [FullType(String)]), format: ListFormat.csv,),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (toTs != null) r'to_ts': encodeQueryParameter(_serializers, toTs, const FullType(int)),
      if (aggregate != null) r'aggregate': encodeQueryParameter(_serializers, aggregate, const FullType(int)),
      if (fill != null) r'fill': encodeQueryParameter(_serializers, fill, const FullType(bool)),
      if (mappingPriority != null) r'mapping_priority': encodeQueryParameter(_serializers, mappingPriority, const FullType(String)),
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

  /// futuresV1HistoricalTrades
  /// 
  ///
  /// Parameters:
  /// * [market] - The exchange to obtain data from
  /// * [instrument] - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  /// * [afterTs] - Unix timestamp in seconds of the earliest trade in the response.
  /// * [lastCcseq] - The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.
  /// * [limit] - The maximum number of trades to return
  /// * [mappingPriority] - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  /// * [responseFormat] - The format of the data response in uppercase. It can be one of the following: JSON,CSV
  /// * [return404OnEmptyResponse] - If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GENERICRESPONSE] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<GENERICRESPONSE>> futuresV1HistoricalTrades({ 
    required String market,
    required String instrument,
    int? afterTs,
    int? lastCcseq = 0,
    int? limit = 100,
    String? mappingPriority = 'CHECK_MAPPED_FIRST',
    String? responseFormat = 'JSON',
    bool? return404OnEmptyResponse = false,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/futures/v1/historical/trades';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'api_key_header',
            'keyName': 'authorization',
            'where': 'header',
          },{
            'type': 'apiKey',
            'name': 'api_key_query',
            'keyName': 'api_key',
            'where': 'query',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'market': encodeQueryParameter(_serializers, market, const FullType(String)),
      r'instrument': encodeQueryParameter(_serializers, instrument, const FullType(String)),
      if (afterTs != null) r'after_ts': encodeQueryParameter(_serializers, afterTs, const FullType(int)),
      if (lastCcseq != null) r'last_ccseq': encodeQueryParameter(_serializers, lastCcseq, const FullType(int)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (mappingPriority != null) r'mapping_priority': encodeQueryParameter(_serializers, mappingPriority, const FullType(String)),
      if (responseFormat != null) r'response_format': encodeQueryParameter(_serializers, responseFormat, const FullType(String)),
      if (return404OnEmptyResponse != null) r'return_404_on_empty_response': encodeQueryParameter(_serializers, return404OnEmptyResponse, const FullType(bool)),
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

  /// futuresV1HistoricalTradesHour
  /// 
  ///
  /// Parameters:
  /// * [market] - The exchange to obtain data from
  /// * [instrument] - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  /// * [hourTs] - Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour.
  /// * [mappingPriority] - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  /// * [responseFormat] - The format of the data response in uppercase. It can be one of the following: JSON,CSV
  /// * [return404OnEmptyResponse] - If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GENERICRESPONSE] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<GENERICRESPONSE>> futuresV1HistoricalTradesHour({ 
    required String market,
    required String instrument,
    int? hourTs,
    String? mappingPriority = 'CHECK_MAPPED_FIRST',
    String? responseFormat = 'JSON',
    bool? return404OnEmptyResponse = false,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/futures/v1/historical/trades/hour';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'api_key_header',
            'keyName': 'authorization',
            'where': 'header',
          },{
            'type': 'apiKey',
            'name': 'api_key_query',
            'keyName': 'api_key',
            'where': 'query',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'market': encodeQueryParameter(_serializers, market, const FullType(String)),
      r'instrument': encodeQueryParameter(_serializers, instrument, const FullType(String)),
      if (hourTs != null) r'hour_ts': encodeQueryParameter(_serializers, hourTs, const FullType(int)),
      if (mappingPriority != null) r'mapping_priority': encodeQueryParameter(_serializers, mappingPriority, const FullType(String)),
      if (responseFormat != null) r'response_format': encodeQueryParameter(_serializers, responseFormat, const FullType(String)),
      if (return404OnEmptyResponse != null) r'return_404_on_empty_response': encodeQueryParameter(_serializers, return404OnEmptyResponse, const FullType(bool)),
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

  /// futuresV1LatestFundingRateTick
  /// 
  ///
  /// Parameters:
  /// * [market] - The exchange to obtain data from
  /// * [instruments] - A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
  /// * [groups] - When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
  /// * [mappingPriority] - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GENERICRESPONSE] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<GENERICRESPONSE>> futuresV1LatestFundingRateTick({ 
    required String market,
    required BuiltList<String> instruments,
    BuiltList<String>? groups,
    String? mappingPriority = 'CHECK_MAPPED_FIRST',
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/futures/v1/latest/funding-rate/tick';
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
      r'market': encodeQueryParameter(_serializers, market, const FullType(String)),
      r'instruments': encodeCollectionQueryParameter<String>(_serializers, instruments, const FullType(BuiltList, [FullType(String)]), format: ListFormat.csv,),
      if (groups != null) r'groups': encodeCollectionQueryParameter<String>(_serializers, groups, const FullType(BuiltList, [FullType(String)]), format: ListFormat.csv,),
      if (mappingPriority != null) r'mapping_priority': encodeQueryParameter(_serializers, mappingPriority, const FullType(String)),
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

  /// futuresV1LatestInstrumentMetadata
  /// 
  ///
  /// Parameters:
  /// * [market] - The exchange to obtain data from
  /// * [instruments] - A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
  /// * [groups] - When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE
  /// * [mappingPriority] - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GENERICRESPONSE] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<GENERICRESPONSE>> futuresV1LatestInstrumentMetadata({ 
    required String market,
    required BuiltList<String> instruments,
    BuiltList<String>? groups,
    String? mappingPriority = 'CHECK_MAPPED_FIRST',
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/futures/v1/latest/instrument/metadata';
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
      r'market': encodeQueryParameter(_serializers, market, const FullType(String)),
      r'instruments': encodeCollectionQueryParameter<String>(_serializers, instruments, const FullType(BuiltList, [FullType(String)]), format: ListFormat.csv,),
      if (groups != null) r'groups': encodeCollectionQueryParameter<String>(_serializers, groups, const FullType(BuiltList, [FullType(String)]), format: ListFormat.csv,),
      if (mappingPriority != null) r'mapping_priority': encodeQueryParameter(_serializers, mappingPriority, const FullType(String)),
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

  /// futuresV1LatestOpenInterestTick
  /// 
  ///
  /// Parameters:
  /// * [market] - The exchange to obtain data from
  /// * [instruments] - A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
  /// * [groups] - When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
  /// * [mappingPriority] - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GENERICRESPONSE] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<GENERICRESPONSE>> futuresV1LatestOpenInterestTick({ 
    required String market,
    required BuiltList<String> instruments,
    BuiltList<String>? groups,
    String? mappingPriority = 'CHECK_MAPPED_FIRST',
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/futures/v1/latest/open-interest/tick';
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
      r'market': encodeQueryParameter(_serializers, market, const FullType(String)),
      r'instruments': encodeCollectionQueryParameter<String>(_serializers, instruments, const FullType(BuiltList, [FullType(String)]), format: ListFormat.csv,),
      if (groups != null) r'groups': encodeCollectionQueryParameter<String>(_serializers, groups, const FullType(BuiltList, [FullType(String)]), format: ListFormat.csv,),
      if (mappingPriority != null) r'mapping_priority': encodeQueryParameter(_serializers, mappingPriority, const FullType(String)),
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

  /// futuresV1LatestTick
  /// 
  ///
  /// Parameters:
  /// * [market] - The exchange to obtain data from
  /// * [instruments] - A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
  /// * [groups] - When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
  /// * [mappingPriority] - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GENERICRESPONSE] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<GENERICRESPONSE>> futuresV1LatestTick({ 
    required String market,
    required BuiltList<String> instruments,
    BuiltList<String>? groups,
    String? mappingPriority = 'CHECK_MAPPED_FIRST',
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/futures/v1/latest/tick';
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
      r'market': encodeQueryParameter(_serializers, market, const FullType(String)),
      r'instruments': encodeCollectionQueryParameter<String>(_serializers, instruments, const FullType(BuiltList, [FullType(String)]), format: ListFormat.csv,),
      if (groups != null) r'groups': encodeCollectionQueryParameter<String>(_serializers, groups, const FullType(BuiltList, [FullType(String)]), format: ListFormat.csv,),
      if (mappingPriority != null) r'mapping_priority': encodeQueryParameter(_serializers, mappingPriority, const FullType(String)),
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

  /// futuresV1Markets
  /// 
  ///
  /// Parameters:
  /// * [market] - The exchange to obtain data from
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GENERICRESPONSE] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<GENERICRESPONSE>> futuresV1Markets({ 
    String? market = '',
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/futures/v1/markets';
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
      if (market != null) r'market': encodeQueryParameter(_serializers, market, const FullType(String)),
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

  /// futuresV1MarketsInstruments
  /// 
  ///
  /// Parameters:
  /// * [market] - The exchange to obtain data from
  /// * [instrument] - The mapped instrument to retrieve on a specific market.
  /// * [instrumentStatus] - The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GENERICRESPONSE] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<GENERICRESPONSE>> futuresV1MarketsInstruments({ 
    String? market = '',
    String? instrument = '',
    BuiltList<String>? instrumentStatus,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/futures/v1/markets/instruments';
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
      if (market != null) r'market': encodeQueryParameter(_serializers, market, const FullType(String)),
      if (instrument != null) r'instrument': encodeQueryParameter(_serializers, instrument, const FullType(String)),
      if (instrumentStatus != null) r'instrument_status': encodeCollectionQueryParameter<String>(_serializers, instrumentStatus, const FullType(BuiltList, [FullType(String)]), format: ListFormat.csv,),
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

  /// futuresV1MarketsInstrumentsUnmapped
  /// 
  ///
  /// Parameters:
  /// * [market] - The exchange to obtain data from
  /// * [instrument] - The unmapped instrument to retrieve on a specific market.
  /// * [instrumentStatus] - The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GENERICRESPONSE] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<GENERICRESPONSE>> futuresV1MarketsInstrumentsUnmapped({ 
    String? market = '',
    String? instrument = '',
    BuiltList<String>? instrumentStatus,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/futures/v1/markets/instruments/unmapped';
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
      if (market != null) r'market': encodeQueryParameter(_serializers, market, const FullType(String)),
      if (instrument != null) r'instrument': encodeQueryParameter(_serializers, instrument, const FullType(String)),
      if (instrumentStatus != null) r'instrument_status': encodeCollectionQueryParameter<String>(_serializers, instrumentStatus, const FullType(BuiltList, [FullType(String)]), format: ListFormat.csv,),
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

  /// indexV1HistoricalDays
  /// 
  ///
  /// Parameters:
  /// * [market] - The exchange to obtain data from
  /// * [instrument] - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  /// * [groups] - When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME
  /// * [limit] - The number of data points to return
  /// * [toTs] - Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  /// * [aggregate] - The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  /// * [fill] - Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  /// * [mappingPriority] - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
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
  Future<Response<GENERICRESPONSE>> indexV1HistoricalDays({ 
    required String market,
    required String instrument,
    BuiltList<String>? groups,
    int? limit = 30,
    int? toTs,
    int? aggregate = 1,
    bool? fill = true,
    String? mappingPriority = 'CHECK_MAPPED_FIRST',
    String? responseFormat = 'JSON',
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/index/v1/historical/days';
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
      r'market': encodeQueryParameter(_serializers, market, const FullType(String)),
      r'instrument': encodeQueryParameter(_serializers, instrument, const FullType(String)),
      if (groups != null) r'groups': encodeCollectionQueryParameter<String>(_serializers, groups, const FullType(BuiltList, [FullType(String)]), format: ListFormat.csv,),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (toTs != null) r'to_ts': encodeQueryParameter(_serializers, toTs, const FullType(int)),
      if (aggregate != null) r'aggregate': encodeQueryParameter(_serializers, aggregate, const FullType(int)),
      if (fill != null) r'fill': encodeQueryParameter(_serializers, fill, const FullType(bool)),
      if (mappingPriority != null) r'mapping_priority': encodeQueryParameter(_serializers, mappingPriority, const FullType(String)),
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

  /// indexV1HistoricalHours
  /// 
  ///
  /// Parameters:
  /// * [market] - The exchange to obtain data from
  /// * [instrument] - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  /// * [groups] - When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME
  /// * [limit] - The number of data points to return
  /// * [toTs] - Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  /// * [aggregate] - The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  /// * [fill] - Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  /// * [mappingPriority] - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
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
  Future<Response<GENERICRESPONSE>> indexV1HistoricalHours({ 
    required String market,
    required String instrument,
    BuiltList<String>? groups,
    int? limit = 30,
    int? toTs,
    int? aggregate = 1,
    bool? fill = true,
    String? mappingPriority = 'CHECK_MAPPED_FIRST',
    String? responseFormat = 'JSON',
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/index/v1/historical/hours';
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
      r'market': encodeQueryParameter(_serializers, market, const FullType(String)),
      r'instrument': encodeQueryParameter(_serializers, instrument, const FullType(String)),
      if (groups != null) r'groups': encodeCollectionQueryParameter<String>(_serializers, groups, const FullType(BuiltList, [FullType(String)]), format: ListFormat.csv,),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (toTs != null) r'to_ts': encodeQueryParameter(_serializers, toTs, const FullType(int)),
      if (aggregate != null) r'aggregate': encodeQueryParameter(_serializers, aggregate, const FullType(int)),
      if (fill != null) r'fill': encodeQueryParameter(_serializers, fill, const FullType(bool)),
      if (mappingPriority != null) r'mapping_priority': encodeQueryParameter(_serializers, mappingPriority, const FullType(String)),
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

  /// indexV1HistoricalMessages
  /// 
  ///
  /// Parameters:
  /// * [market] - The exchange to obtain data from
  /// * [instrument] - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  /// * [afterTs] - Unix timestamp in seconds of the earliest index message in the response
  /// * [lastCcseq] - The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.
  /// * [limit] - The maximum number of index messages to return
  /// * [mappingPriority] - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  /// * [responseFormat] - The format of the data response in uppercase. It can be one of the following: JSON,CSV
  /// * [return404OnEmptyResponse] - If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GENERICRESPONSE] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<GENERICRESPONSE>> indexV1HistoricalMessages({ 
    required String market,
    required String instrument,
    int? afterTs,
    int? lastCcseq = 0,
    int? limit = 100,
    String? mappingPriority = 'CHECK_MAPPED_FIRST',
    String? responseFormat = 'JSON',
    bool? return404OnEmptyResponse = false,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/index/v1/historical/messages';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'api_key_header',
            'keyName': 'authorization',
            'where': 'header',
          },{
            'type': 'apiKey',
            'name': 'api_key_query',
            'keyName': 'api_key',
            'where': 'query',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'market': encodeQueryParameter(_serializers, market, const FullType(String)),
      r'instrument': encodeQueryParameter(_serializers, instrument, const FullType(String)),
      if (afterTs != null) r'after_ts': encodeQueryParameter(_serializers, afterTs, const FullType(int)),
      if (lastCcseq != null) r'last_ccseq': encodeQueryParameter(_serializers, lastCcseq, const FullType(int)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (mappingPriority != null) r'mapping_priority': encodeQueryParameter(_serializers, mappingPriority, const FullType(String)),
      if (responseFormat != null) r'response_format': encodeQueryParameter(_serializers, responseFormat, const FullType(String)),
      if (return404OnEmptyResponse != null) r'return_404_on_empty_response': encodeQueryParameter(_serializers, return404OnEmptyResponse, const FullType(bool)),
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

  /// indexV1HistoricalMessagesHour
  /// 
  ///
  /// Parameters:
  /// * [market] - The exchange to obtain data from
  /// * [instrument] - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  /// * [hourTs] - Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour.
  /// * [mappingPriority] - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  /// * [responseFormat] - The format of the data response in uppercase. It can be one of the following: JSON,CSV
  /// * [return404OnEmptyResponse] - If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GENERICRESPONSE] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<GENERICRESPONSE>> indexV1HistoricalMessagesHour({ 
    required String market,
    required String instrument,
    int? hourTs,
    String? mappingPriority = 'CHECK_MAPPED_FIRST',
    String? responseFormat = 'JSON',
    bool? return404OnEmptyResponse = false,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/index/v1/historical/messages/hour';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'api_key_header',
            'keyName': 'authorization',
            'where': 'header',
          },{
            'type': 'apiKey',
            'name': 'api_key_query',
            'keyName': 'api_key',
            'where': 'query',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'market': encodeQueryParameter(_serializers, market, const FullType(String)),
      r'instrument': encodeQueryParameter(_serializers, instrument, const FullType(String)),
      if (hourTs != null) r'hour_ts': encodeQueryParameter(_serializers, hourTs, const FullType(int)),
      if (mappingPriority != null) r'mapping_priority': encodeQueryParameter(_serializers, mappingPriority, const FullType(String)),
      if (responseFormat != null) r'response_format': encodeQueryParameter(_serializers, responseFormat, const FullType(String)),
      if (return404OnEmptyResponse != null) r'return_404_on_empty_response': encodeQueryParameter(_serializers, return404OnEmptyResponse, const FullType(bool)),
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

  /// indexV1HistoricalMinutes
  /// 
  ///
  /// Parameters:
  /// * [market] - The exchange to obtain data from
  /// * [instrument] - The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  /// * [groups] - When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME
  /// * [limit] - The number of data points to return
  /// * [toTs] - Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  /// * [aggregate] - The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  /// * [fill] - Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  /// * [mappingPriority] - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
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
  Future<Response<GENERICRESPONSE>> indexV1HistoricalMinutes({ 
    required String market,
    required String instrument,
    BuiltList<String>? groups,
    int? limit = 30,
    int? toTs,
    int? aggregate = 1,
    bool? fill = true,
    String? mappingPriority = 'CHECK_MAPPED_FIRST',
    String? responseFormat = 'JSON',
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/index/v1/historical/minutes';
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
      r'market': encodeQueryParameter(_serializers, market, const FullType(String)),
      r'instrument': encodeQueryParameter(_serializers, instrument, const FullType(String)),
      if (groups != null) r'groups': encodeCollectionQueryParameter<String>(_serializers, groups, const FullType(BuiltList, [FullType(String)]), format: ListFormat.csv,),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (toTs != null) r'to_ts': encodeQueryParameter(_serializers, toTs, const FullType(int)),
      if (aggregate != null) r'aggregate': encodeQueryParameter(_serializers, aggregate, const FullType(int)),
      if (fill != null) r'fill': encodeQueryParameter(_serializers, fill, const FullType(bool)),
      if (mappingPriority != null) r'mapping_priority': encodeQueryParameter(_serializers, mappingPriority, const FullType(String)),
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

  /// indexV1LatestInstrumentMetadata
  /// 
  ///
  /// Parameters:
  /// * [market] - The exchange to obtain data from
  /// * [instruments] - A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
  /// * [groups] - When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE
  /// * [mappingPriority] - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GENERICRESPONSE] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<GENERICRESPONSE>> indexV1LatestInstrumentMetadata({ 
    required String market,
    required BuiltList<String> instruments,
    BuiltList<String>? groups,
    String? mappingPriority = 'CHECK_MAPPED_FIRST',
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/index/v1/latest/instrument/metadata';
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
      r'market': encodeQueryParameter(_serializers, market, const FullType(String)),
      r'instruments': encodeCollectionQueryParameter<String>(_serializers, instruments, const FullType(BuiltList, [FullType(String)]), format: ListFormat.csv,),
      if (groups != null) r'groups': encodeCollectionQueryParameter<String>(_serializers, groups, const FullType(BuiltList, [FullType(String)]), format: ListFormat.csv,),
      if (mappingPriority != null) r'mapping_priority': encodeQueryParameter(_serializers, mappingPriority, const FullType(String)),
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

  /// indexV1LatestTick
  /// 
  ///
  /// Parameters:
  /// * [market] - The exchange to obtain data from
  /// * [instruments] - A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
  /// * [groups] - When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
  /// * [mappingPriority] - The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GENERICRESPONSE] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<GENERICRESPONSE>> indexV1LatestTick({ 
    required String market,
    required BuiltList<String> instruments,
    BuiltList<String>? groups,
    String? mappingPriority = 'CHECK_MAPPED_FIRST',
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/index/v1/latest/tick';
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
      r'market': encodeQueryParameter(_serializers, market, const FullType(String)),
      r'instruments': encodeCollectionQueryParameter<String>(_serializers, instruments, const FullType(BuiltList, [FullType(String)]), format: ListFormat.csv,),
      if (groups != null) r'groups': encodeCollectionQueryParameter<String>(_serializers, groups, const FullType(BuiltList, [FullType(String)]), format: ListFormat.csv,),
      if (mappingPriority != null) r'mapping_priority': encodeQueryParameter(_serializers, mappingPriority, const FullType(String)),
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

  /// indexV1Markets
  /// 
  ///
  /// Parameters:
  /// * [market] - The exchange to obtain data from
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GENERICRESPONSE] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<GENERICRESPONSE>> indexV1Markets({ 
    String? market = '',
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/index/v1/markets';
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
      if (market != null) r'market': encodeQueryParameter(_serializers, market, const FullType(String)),
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

  /// indexV1MarketsInstruments
  /// 
  ///
  /// Parameters:
  /// * [market] - The exchange to obtain data from
  /// * [instrument] - The mapped instrument to retrieve on a specific market.
  /// * [instrumentStatus] - The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GENERICRESPONSE] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<GENERICRESPONSE>> indexV1MarketsInstruments({ 
    String? market = '',
    String? instrument = '',
    BuiltList<String>? instrumentStatus,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/index/v1/markets/instruments';
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
      if (market != null) r'market': encodeQueryParameter(_serializers, market, const FullType(String)),
      if (instrument != null) r'instrument': encodeQueryParameter(_serializers, instrument, const FullType(String)),
      if (instrumentStatus != null) r'instrument_status': encodeCollectionQueryParameter<String>(_serializers, instrumentStatus, const FullType(BuiltList, [FullType(String)]), format: ListFormat.csv,),
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

  /// indexV1MarketsInstrumentsUnmapped
  /// 
  ///
  /// Parameters:
  /// * [market] - The exchange to obtain data from
  /// * [instrument] - The unmapped instrument to retrieve on a specific market.
  /// * [instrumentStatus] - The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GENERICRESPONSE] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<GENERICRESPONSE>> indexV1MarketsInstrumentsUnmapped({ 
    String? market = '',
    String? instrument = '',
    BuiltList<String>? instrumentStatus,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/index/v1/markets/instruments/unmapped';
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
      if (market != null) r'market': encodeQueryParameter(_serializers, market, const FullType(String)),
      if (instrument != null) r'instrument': encodeQueryParameter(_serializers, instrument, const FullType(String)),
      if (instrumentStatus != null) r'instrument_status': encodeCollectionQueryParameter<String>(_serializers, instrumentStatus, const FullType(BuiltList, [FullType(String)]), format: ListFormat.csv,),
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
