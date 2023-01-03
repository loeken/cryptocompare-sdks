//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class OverviewApi {
  OverviewApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'GET /overview/v1/historical/marketcap/all/assets/days' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [List<String>] groups:
  ///   When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
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
  /// * [String] responseFormat:
  ///   The format of the data response in uppercase. It can be one of the following: JSON,CSV
  Future<Response> overviewV1HistoricalMarketcapAllAssetsDaysWithHttpInfo({ List<String>? groups, int? limit, int? toTs, int? aggregate, bool? fill, String? responseFormat, }) async {
    // ignore: prefer_const_declarations
    final path = r'/overview/v1/historical/marketcap/all/assets/days';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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
  /// * [List<String>] groups:
  ///   When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
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
  /// * [String] responseFormat:
  ///   The format of the data response in uppercase. It can be one of the following: JSON,CSV
  Future<GENERICRESPONSE?> overviewV1HistoricalMarketcapAllAssetsDays({ List<String>? groups, int? limit, int? toTs, int? aggregate, bool? fill, String? responseFormat, }) async {
    final response = await overviewV1HistoricalMarketcapAllAssetsDaysWithHttpInfo( groups: groups, limit: limit, toTs: toTs, aggregate: aggregate, fill: fill, responseFormat: responseFormat, );
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

  /// Performs an HTTP 'GET /overview/v1/historical/marketcap/all/assets/hours' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [List<String>] groups:
  ///   When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
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
  /// * [String] responseFormat:
  ///   The format of the data response in uppercase. It can be one of the following: JSON,CSV
  Future<Response> overviewV1HistoricalMarketcapAllAssetsHoursWithHttpInfo({ List<String>? groups, int? limit, int? toTs, int? aggregate, bool? fill, String? responseFormat, }) async {
    // ignore: prefer_const_declarations
    final path = r'/overview/v1/historical/marketcap/all/assets/hours';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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
  /// * [List<String>] groups:
  ///   When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
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
  /// * [String] responseFormat:
  ///   The format of the data response in uppercase. It can be one of the following: JSON,CSV
  Future<GENERICRESPONSE?> overviewV1HistoricalMarketcapAllAssetsHours({ List<String>? groups, int? limit, int? toTs, int? aggregate, bool? fill, String? responseFormat, }) async {
    final response = await overviewV1HistoricalMarketcapAllAssetsHoursWithHttpInfo( groups: groups, limit: limit, toTs: toTs, aggregate: aggregate, fill: fill, responseFormat: responseFormat, );
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

  /// Performs an HTTP 'GET /overview/v1/historical/marketcap/ftw/assets/days' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [List<String>] groups:
  ///   When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
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
  /// * [String] responseFormat:
  ///   The format of the data response in uppercase. It can be one of the following: JSON,CSV
  Future<Response> overviewV1HistoricalMarketcapFtwAssetsDaysWithHttpInfo({ List<String>? groups, int? limit, int? toTs, int? aggregate, bool? fill, String? responseFormat, }) async {
    // ignore: prefer_const_declarations
    final path = r'/overview/v1/historical/marketcap/ftw/assets/days';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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
  /// * [List<String>] groups:
  ///   When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
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
  /// * [String] responseFormat:
  ///   The format of the data response in uppercase. It can be one of the following: JSON,CSV
  Future<GENERICRESPONSE?> overviewV1HistoricalMarketcapFtwAssetsDays({ List<String>? groups, int? limit, int? toTs, int? aggregate, bool? fill, String? responseFormat, }) async {
    final response = await overviewV1HistoricalMarketcapFtwAssetsDaysWithHttpInfo( groups: groups, limit: limit, toTs: toTs, aggregate: aggregate, fill: fill, responseFormat: responseFormat, );
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

  /// Performs an HTTP 'GET /overview/v1/historical/marketcap/ftw/assets/hours' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [List<String>] groups:
  ///   When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
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
  /// * [String] responseFormat:
  ///   The format of the data response in uppercase. It can be one of the following: JSON,CSV
  Future<Response> overviewV1HistoricalMarketcapFtwAssetsHoursWithHttpInfo({ List<String>? groups, int? limit, int? toTs, int? aggregate, bool? fill, String? responseFormat, }) async {
    // ignore: prefer_const_declarations
    final path = r'/overview/v1/historical/marketcap/ftw/assets/hours';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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
  /// * [List<String>] groups:
  ///   When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
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
  /// * [String] responseFormat:
  ///   The format of the data response in uppercase. It can be one of the following: JSON,CSV
  Future<GENERICRESPONSE?> overviewV1HistoricalMarketcapFtwAssetsHours({ List<String>? groups, int? limit, int? toTs, int? aggregate, bool? fill, String? responseFormat, }) async {
    final response = await overviewV1HistoricalMarketcapFtwAssetsHoursWithHttpInfo( groups: groups, limit: limit, toTs: toTs, aggregate: aggregate, fill: fill, responseFormat: responseFormat, );
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

  /// Performs an HTTP 'GET /overview/v1/latest/marketcap/all/tick' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [List<String>] groups:
  ///   When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR
  Future<Response> overviewV1LatestMarketcapAllTickWithHttpInfo({ List<String>? groups, }) async {
    // ignore: prefer_const_declarations
    final path = r'/overview/v1/latest/marketcap/all/tick';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (groups != null) {
      queryParams.addAll(_queryParams('csv', 'groups', groups));
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
  /// * [List<String>] groups:
  ///   When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR
  Future<GENERICRESPONSE?> overviewV1LatestMarketcapAllTick({ List<String>? groups, }) async {
    final response = await overviewV1LatestMarketcapAllTickWithHttpInfo( groups: groups, );
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

  /// Performs an HTTP 'GET /overview/v1/latest/marketcap/ftw/tick' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [List<String>] groups:
  ///   When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR
  Future<Response> overviewV1LatestMarketcapFtwTickWithHttpInfo({ List<String>? groups, }) async {
    // ignore: prefer_const_declarations
    final path = r'/overview/v1/latest/marketcap/ftw/tick';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (groups != null) {
      queryParams.addAll(_queryParams('csv', 'groups', groups));
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
  /// * [List<String>] groups:
  ///   When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR
  Future<GENERICRESPONSE?> overviewV1LatestMarketcapFtwTick({ List<String>? groups, }) async {
    final response = await overviewV1LatestMarketcapFtwTickWithHttpInfo( groups: groups, );
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
