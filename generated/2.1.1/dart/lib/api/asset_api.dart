//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AssetApi {
  AssetApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'GET /asset/v1/data/by/address' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] address (required):
  ///
  /// * [String] chainSymbol (required):
  ///
  /// * [String] groups:
  Future<Response> assetV1DataByAddressWithHttpInfo(String address, String chainSymbol, { String? groups, }) async {
    // ignore: prefer_const_declarations
    final path = r'/asset/v1/data/by/address';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'address', address));
      queryParams.addAll(_queryParams('', 'chain_symbol', chainSymbol));
    if (groups != null) {
      queryParams.addAll(_queryParams('', 'groups', groups));
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
  /// * [String] address (required):
  ///
  /// * [String] chainSymbol (required):
  ///
  /// * [String] groups:
  Future<GENERICRESPONSE?> assetV1DataByAddress(String address, String chainSymbol, { String? groups, }) async {
    final response = await assetV1DataByAddressWithHttpInfo(address, chainSymbol,  groups: groups, );
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

  /// Performs an HTTP 'GET /asset/v1/data/by/id' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] assetId (required):
  ///   The asset id you are interested in
  ///
  /// * [String] groups:
  Future<Response> assetV1DataByIdWithHttpInfo(int assetId, { String? groups, }) async {
    // ignore: prefer_const_declarations
    final path = r'/asset/v1/data/by/id';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'asset_id', assetId));
    if (groups != null) {
      queryParams.addAll(_queryParams('', 'groups', groups));
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
  /// * [int] assetId (required):
  ///   The asset id you are interested in
  ///
  /// * [String] groups:
  Future<GENERICRESPONSE?> assetV1DataById(int assetId, { String? groups, }) async {
    final response = await assetV1DataByIdWithHttpInfo(assetId,  groups: groups, );
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

  /// Performs an HTTP 'GET /asset/v1/data/by/symbol' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] assetSymbol (required):
  ///   The asset symbol you are interested in
  ///
  /// * [String] groups:
  Future<Response> assetV1DataBySymbolWithHttpInfo(String assetSymbol, { String? groups, }) async {
    // ignore: prefer_const_declarations
    final path = r'/asset/v1/data/by/symbol';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'asset_symbol', assetSymbol));
    if (groups != null) {
      queryParams.addAll(_queryParams('', 'groups', groups));
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
  /// * [String] assetSymbol (required):
  ///   The asset symbol you are interested in
  ///
  /// * [String] groups:
  Future<GENERICRESPONSE?> assetV1DataBySymbol(String assetSymbol, { String? groups, }) async {
    final response = await assetV1DataBySymbolWithHttpInfo(assetSymbol,  groups: groups, );
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

  /// Performs an HTTP 'GET /asset/v1/top/list' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] page:
  ///   The page number for the request to get {page_size} coins at the time.
  ///
  /// * [int] pageSize:
  ///   The number of items returned per page
  ///
  /// * [String] assetType:
  ///   The asset class/type
  ///
  /// * [String] sortBy:
  ///   Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL )
  ///
  /// * [String] sortDirection:
  ///   Sort direction ( DESC,ASC )
  ///
  /// * [String] groups:
  Future<Response> assetV1TopListWithHttpInfo({ int? page, int? pageSize, String? assetType, String? sortBy, String? sortDirection, String? groups, }) async {
    // ignore: prefer_const_declarations
    final path = r'/asset/v1/top/list';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'page_size', pageSize));
    }
    if (assetType != null) {
      queryParams.addAll(_queryParams('', 'asset_type', assetType));
    }
    if (sortBy != null) {
      queryParams.addAll(_queryParams('', 'sort_by', sortBy));
    }
    if (sortDirection != null) {
      queryParams.addAll(_queryParams('', 'sort_direction', sortDirection));
    }
    if (groups != null) {
      queryParams.addAll(_queryParams('', 'groups', groups));
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
  /// * [int] page:
  ///   The page number for the request to get {page_size} coins at the time.
  ///
  /// * [int] pageSize:
  ///   The number of items returned per page
  ///
  /// * [String] assetType:
  ///   The asset class/type
  ///
  /// * [String] sortBy:
  ///   Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL )
  ///
  /// * [String] sortDirection:
  ///   Sort direction ( DESC,ASC )
  ///
  /// * [String] groups:
  Future<GENERICRESPONSE?> assetV1TopList({ int? page, int? pageSize, String? assetType, String? sortBy, String? sortDirection, String? groups, }) async {
    final response = await assetV1TopListWithHttpInfo( page: page, pageSize: pageSize, assetType: assetType, sortBy: sortBy, sortDirection: sortDirection, groups: groups, );
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
