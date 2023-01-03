//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SpotApi {
  SpotApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'GET /spot/v1/historical/days' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] market (required):
  ///   The exchange to obtain data from
  ///
  /// * [String] instrument (required):
  ///   The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  ///
  /// * [List<String>] groups:
  ///   When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME
  ///
  /// * [int] limit:
  ///   The number of data points to return
  ///
  /// * [int] toTs:
  ///   Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  ///
  /// * [int] aggregate:
  ///   The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  ///
  /// * [bool] fill:
  ///   Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  ///
  /// * [String] mappingPriority:
  ///   The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  ///
  /// * [String] responseFormat:
  ///   The format of the data response in uppercase. It can be one of the following: JSON,CSV
  Future<Response> spotV1HistoricalDaysWithHttpInfo(String market, String instrument, { List<String>? groups, int? limit, int? toTs, int? aggregate, bool? fill, String? mappingPriority, String? responseFormat, }) async {
    // ignore: prefer_const_declarations
    final path = r'/spot/v1/historical/days';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'market', market));
      queryParams.addAll(_queryParams('', 'instrument', instrument));
    if (groups != null) {
      queryParams.addAll(_queryParams('csv', 'groups', groups));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (toTs != null) {
      queryParams.addAll(_queryParams('', 'to_ts', toTs));
    }
    if (aggregate != null) {
      queryParams.addAll(_queryParams('', 'aggregate', aggregate));
    }
    if (fill != null) {
      queryParams.addAll(_queryParams('', 'fill', fill));
    }
    if (mappingPriority != null) {
      queryParams.addAll(_queryParams('', 'mapping_priority', mappingPriority));
    }
    if (responseFormat != null) {
      queryParams.addAll(_queryParams('', 'response_format', responseFormat));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] market (required):
  ///   The exchange to obtain data from
  ///
  /// * [String] instrument (required):
  ///   The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  ///
  /// * [List<String>] groups:
  ///   When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME
  ///
  /// * [int] limit:
  ///   The number of data points to return
  ///
  /// * [int] toTs:
  ///   Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  ///
  /// * [int] aggregate:
  ///   The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  ///
  /// * [bool] fill:
  ///   Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  ///
  /// * [String] mappingPriority:
  ///   The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  ///
  /// * [String] responseFormat:
  ///   The format of the data response in uppercase. It can be one of the following: JSON,CSV
  Future<SPOTINSTRUMENTHISTODATARESPONSE?> spotV1HistoricalDays(String market, String instrument, { List<String>? groups, int? limit, int? toTs, int? aggregate, bool? fill, String? mappingPriority, String? responseFormat, }) async {
    final response = await spotV1HistoricalDaysWithHttpInfo(market, instrument,  groups: groups, limit: limit, toTs: toTs, aggregate: aggregate, fill: fill, mappingPriority: mappingPriority, responseFormat: responseFormat, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SPOTINSTRUMENTHISTODATARESPONSE',) as SPOTINSTRUMENTHISTODATARESPONSE;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /spot/v1/historical/hours' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] market (required):
  ///   The exchange to obtain data from
  ///
  /// * [String] instrument (required):
  ///   The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  ///
  /// * [List<String>] groups:
  ///   When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME
  ///
  /// * [int] limit:
  ///   The number of data points to return
  ///
  /// * [int] toTs:
  ///   Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  ///
  /// * [int] aggregate:
  ///   The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  ///
  /// * [bool] fill:
  ///   Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  ///
  /// * [String] mappingPriority:
  ///   The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  ///
  /// * [String] responseFormat:
  ///   The format of the data response in uppercase. It can be one of the following: JSON,CSV
  Future<Response> spotV1HistoricalHoursWithHttpInfo(String market, String instrument, { List<String>? groups, int? limit, int? toTs, int? aggregate, bool? fill, String? mappingPriority, String? responseFormat, }) async {
    // ignore: prefer_const_declarations
    final path = r'/spot/v1/historical/hours';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'market', market));
      queryParams.addAll(_queryParams('', 'instrument', instrument));
    if (groups != null) {
      queryParams.addAll(_queryParams('csv', 'groups', groups));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (toTs != null) {
      queryParams.addAll(_queryParams('', 'to_ts', toTs));
    }
    if (aggregate != null) {
      queryParams.addAll(_queryParams('', 'aggregate', aggregate));
    }
    if (fill != null) {
      queryParams.addAll(_queryParams('', 'fill', fill));
    }
    if (mappingPriority != null) {
      queryParams.addAll(_queryParams('', 'mapping_priority', mappingPriority));
    }
    if (responseFormat != null) {
      queryParams.addAll(_queryParams('', 'response_format', responseFormat));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] market (required):
  ///   The exchange to obtain data from
  ///
  /// * [String] instrument (required):
  ///   The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  ///
  /// * [List<String>] groups:
  ///   When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME
  ///
  /// * [int] limit:
  ///   The number of data points to return
  ///
  /// * [int] toTs:
  ///   Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  ///
  /// * [int] aggregate:
  ///   The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  ///
  /// * [bool] fill:
  ///   Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  ///
  /// * [String] mappingPriority:
  ///   The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  ///
  /// * [String] responseFormat:
  ///   The format of the data response in uppercase. It can be one of the following: JSON,CSV
  Future<SPOTINSTRUMENTHISTODATARESPONSE?> spotV1HistoricalHours(String market, String instrument, { List<String>? groups, int? limit, int? toTs, int? aggregate, bool? fill, String? mappingPriority, String? responseFormat, }) async {
    final response = await spotV1HistoricalHoursWithHttpInfo(market, instrument,  groups: groups, limit: limit, toTs: toTs, aggregate: aggregate, fill: fill, mappingPriority: mappingPriority, responseFormat: responseFormat, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SPOTINSTRUMENTHISTODATARESPONSE',) as SPOTINSTRUMENTHISTODATARESPONSE;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /spot/v1/historical/minutes' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] market (required):
  ///   The exchange to obtain data from
  ///
  /// * [String] instrument (required):
  ///   The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  ///
  /// * [List<String>] groups:
  ///   When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME
  ///
  /// * [int] limit:
  ///   The number of data points to return
  ///
  /// * [int] toTs:
  ///   Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  ///
  /// * [int] aggregate:
  ///   The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  ///
  /// * [bool] fill:
  ///   Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  ///
  /// * [String] mappingPriority:
  ///   The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  ///
  /// * [String] responseFormat:
  ///   The format of the data response in uppercase. It can be one of the following: JSON,CSV
  Future<Response> spotV1HistoricalMinutesWithHttpInfo(String market, String instrument, { List<String>? groups, int? limit, int? toTs, int? aggregate, bool? fill, String? mappingPriority, String? responseFormat, }) async {
    // ignore: prefer_const_declarations
    final path = r'/spot/v1/historical/minutes';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'market', market));
      queryParams.addAll(_queryParams('', 'instrument', instrument));
    if (groups != null) {
      queryParams.addAll(_queryParams('csv', 'groups', groups));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (toTs != null) {
      queryParams.addAll(_queryParams('', 'to_ts', toTs));
    }
    if (aggregate != null) {
      queryParams.addAll(_queryParams('', 'aggregate', aggregate));
    }
    if (fill != null) {
      queryParams.addAll(_queryParams('', 'fill', fill));
    }
    if (mappingPriority != null) {
      queryParams.addAll(_queryParams('', 'mapping_priority', mappingPriority));
    }
    if (responseFormat != null) {
      queryParams.addAll(_queryParams('', 'response_format', responseFormat));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] market (required):
  ///   The exchange to obtain data from
  ///
  /// * [String] instrument (required):
  ///   The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  ///
  /// * [List<String>] groups:
  ///   When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME
  ///
  /// * [int] limit:
  ///   The number of data points to return
  ///
  /// * [int] toTs:
  ///   Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  ///
  /// * [int] aggregate:
  ///   The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  ///
  /// * [bool] fill:
  ///   Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  ///
  /// * [String] mappingPriority:
  ///   The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  ///
  /// * [String] responseFormat:
  ///   The format of the data response in uppercase. It can be one of the following: JSON,CSV
  Future<SPOTINSTRUMENTHISTODATARESPONSE?> spotV1HistoricalMinutes(String market, String instrument, { List<String>? groups, int? limit, int? toTs, int? aggregate, bool? fill, String? mappingPriority, String? responseFormat, }) async {
    final response = await spotV1HistoricalMinutesWithHttpInfo(market, instrument,  groups: groups, limit: limit, toTs: toTs, aggregate: aggregate, fill: fill, mappingPriority: mappingPriority, responseFormat: responseFormat, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SPOTINSTRUMENTHISTODATARESPONSE',) as SPOTINSTRUMENTHISTODATARESPONSE;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /spot/v1/historical/orderbook/l2/snapshot/minute' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] market (required):
  ///   The exchange to obtain data from
  ///
  /// * [String] instrument (required):
  ///   The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  ///
  /// * [int] minuteTs (required):
  ///   Unix timestamp in seconds for the minute of the orderbook snapshot you are interested in. You can pass any timestamp within a minute but we will round it down the the full minute timestmap and return the orderbook l2 snapshot at that minute.
  ///
  /// * [int] depth:
  ///   The number of top bids and asks to return.
  ///
  /// * [String] mappingPriority:
  ///   The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  ///
  /// * [String] responseFormat:
  ///   The format of the data response in uppercase. It can be one of the following: JSON,CSV
  Future<Response> spotV1HistoricalOrderbookL2SnapshotMinuteWithHttpInfo(String market, String instrument, int minuteTs, { int? depth, String? mappingPriority, String? responseFormat, }) async {
    // ignore: prefer_const_declarations
    final path = r'/spot/v1/historical/orderbook/l2/snapshot/minute';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'market', market));
      queryParams.addAll(_queryParams('', 'instrument', instrument));
      queryParams.addAll(_queryParams('', 'minute_ts', minuteTs));
    if (depth != null) {
      queryParams.addAll(_queryParams('', 'depth', depth));
    }
    if (mappingPriority != null) {
      queryParams.addAll(_queryParams('', 'mapping_priority', mappingPriority));
    }
    if (responseFormat != null) {
      queryParams.addAll(_queryParams('', 'response_format', responseFormat));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] market (required):
  ///   The exchange to obtain data from
  ///
  /// * [String] instrument (required):
  ///   The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  ///
  /// * [int] minuteTs (required):
  ///   Unix timestamp in seconds for the minute of the orderbook snapshot you are interested in. You can pass any timestamp within a minute but we will round it down the the full minute timestmap and return the orderbook l2 snapshot at that minute.
  ///
  /// * [int] depth:
  ///   The number of top bids and asks to return.
  ///
  /// * [String] mappingPriority:
  ///   The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  ///
  /// * [String] responseFormat:
  ///   The format of the data response in uppercase. It can be one of the following: JSON,CSV
  Future<GENERICRESPONSE?> spotV1HistoricalOrderbookL2SnapshotMinute(String market, String instrument, int minuteTs, { int? depth, String? mappingPriority, String? responseFormat, }) async {
    final response = await spotV1HistoricalOrderbookL2SnapshotMinuteWithHttpInfo(market, instrument, minuteTs,  depth: depth, mappingPriority: mappingPriority, responseFormat: responseFormat, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GENERICRESPONSE',) as GENERICRESPONSE;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /spot/v1/historical/trades' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] market (required):
  ///   The exchange to obtain data from
  ///
  /// * [String] instrument (required):
  ///   The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  ///
  /// * [int] afterTs:
  ///   Unix timestamp in seconds of the earliest trade in the response.
  ///
  /// * [int] lastCcseq:
  ///   The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.
  ///
  /// * [int] limit:
  ///   The maximum number of trades to return
  ///
  /// * [String] mappingPriority:
  ///   The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  ///
  /// * [String] responseFormat:
  ///   The format of the data response in uppercase. It can be one of the following: JSON,CSV
  ///
  /// * [bool] return404OnEmptyResponse:
  ///   If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
  Future<Response> spotV1HistoricalTradesWithHttpInfo(String market, String instrument, { int? afterTs, int? lastCcseq, int? limit, String? mappingPriority, String? responseFormat, bool? return404OnEmptyResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/spot/v1/historical/trades';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'market', market));
      queryParams.addAll(_queryParams('', 'instrument', instrument));
    if (afterTs != null) {
      queryParams.addAll(_queryParams('', 'after_ts', afterTs));
    }
    if (lastCcseq != null) {
      queryParams.addAll(_queryParams('', 'last_ccseq', lastCcseq));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (mappingPriority != null) {
      queryParams.addAll(_queryParams('', 'mapping_priority', mappingPriority));
    }
    if (responseFormat != null) {
      queryParams.addAll(_queryParams('', 'response_format', responseFormat));
    }
    if (return404OnEmptyResponse != null) {
      queryParams.addAll(_queryParams('', 'return_404_on_empty_response', return404OnEmptyResponse));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] market (required):
  ///   The exchange to obtain data from
  ///
  /// * [String] instrument (required):
  ///   The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  ///
  /// * [int] afterTs:
  ///   Unix timestamp in seconds of the earliest trade in the response.
  ///
  /// * [int] lastCcseq:
  ///   The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.
  ///
  /// * [int] limit:
  ///   The maximum number of trades to return
  ///
  /// * [String] mappingPriority:
  ///   The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  ///
  /// * [String] responseFormat:
  ///   The format of the data response in uppercase. It can be one of the following: JSON,CSV
  ///
  /// * [bool] return404OnEmptyResponse:
  ///   If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
  Future<SPOTINSTRUMENTTRADERESPONSE?> spotV1HistoricalTrades(String market, String instrument, { int? afterTs, int? lastCcseq, int? limit, String? mappingPriority, String? responseFormat, bool? return404OnEmptyResponse, }) async {
    final response = await spotV1HistoricalTradesWithHttpInfo(market, instrument,  afterTs: afterTs, lastCcseq: lastCcseq, limit: limit, mappingPriority: mappingPriority, responseFormat: responseFormat, return404OnEmptyResponse: return404OnEmptyResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SPOTINSTRUMENTTRADERESPONSE',) as SPOTINSTRUMENTTRADERESPONSE;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /spot/v1/historical/trades/hour' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] market (required):
  ///   The exchange to obtain data from
  ///
  /// * [String] instrument (required):
  ///   The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  ///
  /// * [int] hourTs:
  ///   Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour.
  ///
  /// * [String] mappingPriority:
  ///   The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  ///
  /// * [String] responseFormat:
  ///   The format of the data response in uppercase. It can be one of the following: JSON,CSV
  ///
  /// * [bool] return404OnEmptyResponse:
  ///   If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
  Future<Response> spotV1HistoricalTradesHourWithHttpInfo(String market, String instrument, { int? hourTs, String? mappingPriority, String? responseFormat, bool? return404OnEmptyResponse, }) async {
    // ignore: prefer_const_declarations
    final path = r'/spot/v1/historical/trades/hour';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'market', market));
      queryParams.addAll(_queryParams('', 'instrument', instrument));
    if (hourTs != null) {
      queryParams.addAll(_queryParams('', 'hour_ts', hourTs));
    }
    if (mappingPriority != null) {
      queryParams.addAll(_queryParams('', 'mapping_priority', mappingPriority));
    }
    if (responseFormat != null) {
      queryParams.addAll(_queryParams('', 'response_format', responseFormat));
    }
    if (return404OnEmptyResponse != null) {
      queryParams.addAll(_queryParams('', 'return_404_on_empty_response', return404OnEmptyResponse));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] market (required):
  ///   The exchange to obtain data from
  ///
  /// * [String] instrument (required):
  ///   The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  ///
  /// * [int] hourTs:
  ///   Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour.
  ///
  /// * [String] mappingPriority:
  ///   The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  ///
  /// * [String] responseFormat:
  ///   The format of the data response in uppercase. It can be one of the following: JSON,CSV
  ///
  /// * [bool] return404OnEmptyResponse:
  ///   If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
  Future<SPOTINSTRUMENTTRADERESPONSE?> spotV1HistoricalTradesHour(String market, String instrument, { int? hourTs, String? mappingPriority, String? responseFormat, bool? return404OnEmptyResponse, }) async {
    final response = await spotV1HistoricalTradesHourWithHttpInfo(market, instrument,  hourTs: hourTs, mappingPriority: mappingPriority, responseFormat: responseFormat, return404OnEmptyResponse: return404OnEmptyResponse, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SPOTINSTRUMENTTRADERESPONSE',) as SPOTINSTRUMENTTRADERESPONSE;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /spot/v1/latest/instrument/metadata' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] market (required):
  ///   The exchange to obtain data from
  ///
  /// * [List<String>] instruments (required):
  ///   A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
  ///
  /// * [List<String>] groups:
  ///   When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE
  ///
  /// * [String] mappingPriority:
  ///   The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  Future<Response> spotV1LatestInstrumentMetadataWithHttpInfo(String market, List<String> instruments, { List<String>? groups, String? mappingPriority, }) async {
    // ignore: prefer_const_declarations
    final path = r'/spot/v1/latest/instrument/metadata';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'market', market));
      queryParams.addAll(_queryParams('csv', 'instruments', instruments));
    if (groups != null) {
      queryParams.addAll(_queryParams('csv', 'groups', groups));
    }
    if (mappingPriority != null) {
      queryParams.addAll(_queryParams('', 'mapping_priority', mappingPriority));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] market (required):
  ///   The exchange to obtain data from
  ///
  /// * [List<String>] instruments (required):
  ///   A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
  ///
  /// * [List<String>] groups:
  ///   When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE
  ///
  /// * [String] mappingPriority:
  ///   The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  Future<SPOTINSTRUMENTMETADATARESPONSE?> spotV1LatestInstrumentMetadata(String market, List<String> instruments, { List<String>? groups, String? mappingPriority, }) async {
    final response = await spotV1LatestInstrumentMetadataWithHttpInfo(market, instruments,  groups: groups, mappingPriority: mappingPriority, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SPOTINSTRUMENTMETADATARESPONSE',) as SPOTINSTRUMENTMETADATARESPONSE;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /spot/v1/latest/tick' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] market (required):
  ///   The exchange to obtain data from
  ///
  /// * [List<String>] instruments (required):
  ///   A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
  ///
  /// * [List<String>] groups:
  ///   When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,LAST_PROCESSED,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
  ///
  /// * [String] mappingPriority:
  ///   The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  Future<Response> spotV1LatestTickWithHttpInfo(String market, List<String> instruments, { List<String>? groups, String? mappingPriority, }) async {
    // ignore: prefer_const_declarations
    final path = r'/spot/v1/latest/tick';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'market', market));
      queryParams.addAll(_queryParams('csv', 'instruments', instruments));
    if (groups != null) {
      queryParams.addAll(_queryParams('csv', 'groups', groups));
    }
    if (mappingPriority != null) {
      queryParams.addAll(_queryParams('', 'mapping_priority', mappingPriority));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] market (required):
  ///   The exchange to obtain data from
  ///
  /// * [List<String>] instruments (required):
  ///   A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
  ///
  /// * [List<String>] groups:
  ///   When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,LAST_PROCESSED,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
  ///
  /// * [String] mappingPriority:
  ///   The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  Future<SPOTINSTRUMENTMARKETDATARESPONSE?> spotV1LatestTick(String market, List<String> instruments, { List<String>? groups, String? mappingPriority, }) async {
    final response = await spotV1LatestTickWithHttpInfo(market, instruments,  groups: groups, mappingPriority: mappingPriority, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SPOTINSTRUMENTMARKETDATARESPONSE',) as SPOTINSTRUMENTMARKETDATARESPONSE;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /spot/v1/markets' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] market:
  ///   The exchange to obtain data from
  Future<Response> spotV1MarketsWithHttpInfo({ String? market, }) async {
    // ignore: prefer_const_declarations
    final path = r'/spot/v1/markets';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (market != null) {
      queryParams.addAll(_queryParams('', 'market', market));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] market:
  ///   The exchange to obtain data from
  Future<GENERICRESPONSE?> spotV1Markets({ String? market, }) async {
    final response = await spotV1MarketsWithHttpInfo( market: market, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GENERICRESPONSE',) as GENERICRESPONSE;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /spot/v1/markets/instruments' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] market:
  ///   The exchange to obtain data from
  ///
  /// * [String] instrument:
  ///   The mapped instrument to retrieve on a specific market.
  ///
  /// * [List<String>] instrumentStatus:
  ///   The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
  Future<Response> spotV1MarketsInstrumentsWithHttpInfo({ String? market, String? instrument, List<String>? instrumentStatus, }) async {
    // ignore: prefer_const_declarations
    final path = r'/spot/v1/markets/instruments';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (market != null) {
      queryParams.addAll(_queryParams('', 'market', market));
    }
    if (instrument != null) {
      queryParams.addAll(_queryParams('', 'instrument', instrument));
    }
    if (instrumentStatus != null) {
      queryParams.addAll(_queryParams('csv', 'instrument_status', instrumentStatus));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] market:
  ///   The exchange to obtain data from
  ///
  /// * [String] instrument:
  ///   The mapped instrument to retrieve on a specific market.
  ///
  /// * [List<String>] instrumentStatus:
  ///   The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
  Future<GENERICRESPONSE?> spotV1MarketsInstruments({ String? market, String? instrument, List<String>? instrumentStatus, }) async {
    final response = await spotV1MarketsInstrumentsWithHttpInfo( market: market, instrument: instrument, instrumentStatus: instrumentStatus, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GENERICRESPONSE',) as GENERICRESPONSE;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /spot/v1/markets/instruments/unmapped' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] market:
  ///   The exchange to obtain data from
  ///
  /// * [String] instrument:
  ///   The unmapped instrument to retrieve on a specific market.
  ///
  /// * [List<String>] instrumentStatus:
  ///   The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
  Future<Response> spotV1MarketsInstrumentsUnmappedWithHttpInfo({ String? market, String? instrument, List<String>? instrumentStatus, }) async {
    // ignore: prefer_const_declarations
    final path = r'/spot/v1/markets/instruments/unmapped';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (market != null) {
      queryParams.addAll(_queryParams('', 'market', market));
    }
    if (instrument != null) {
      queryParams.addAll(_queryParams('', 'instrument', instrument));
    }
    if (instrumentStatus != null) {
      queryParams.addAll(_queryParams('csv', 'instrument_status', instrumentStatus));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] market:
  ///   The exchange to obtain data from
  ///
  /// * [String] instrument:
  ///   The unmapped instrument to retrieve on a specific market.
  ///
  /// * [List<String>] instrumentStatus:
  ///   The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
  Future<GENERICRESPONSE?> spotV1MarketsInstrumentsUnmapped({ String? market, String? instrument, List<String>? instrumentStatus, }) async {
    final response = await spotV1MarketsInstrumentsUnmappedWithHttpInfo( market: market, instrument: instrument, instrumentStatus: instrumentStatus, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GENERICRESPONSE',) as GENERICRESPONSE;
    
    }
    return null;
  }
}
