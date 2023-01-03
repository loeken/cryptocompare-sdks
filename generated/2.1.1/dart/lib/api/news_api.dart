//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class NewsApi {
  NewsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'GET /news/v1/article/list' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [List<String>] sourceIds:
  ///   Get articles from specific sources; either by their ids or keys
  ///
  /// * [String] lang:
  ///   The article Preferred language - English (EN), Portuguese (PT), Espanol (ES)
  ///
  /// * [List<String>] categories:
  ///   News article categories to return
  ///
  /// * [List<String>] excludeCategories:
  ///   News article categories to exclude from results
  ///
  /// * [int] toTs:
  ///   Articles published on or before this timestamp
  Future<Response> newsV1ArticleListWithHttpInfo({ List<String>? sourceIds, String? lang, List<String>? categories, List<String>? excludeCategories, int? toTs, }) async {
    // ignore: prefer_const_declarations
    final path = r'/news/v1/article/list';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (sourceIds != null) {
      queryParams.addAll(_queryParams('csv', 'source_ids', sourceIds));
    }
    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }
    if (categories != null) {
      queryParams.addAll(_queryParams('csv', 'categories', categories));
    }
    if (excludeCategories != null) {
      queryParams.addAll(_queryParams('csv', 'exclude_categories', excludeCategories));
    }
    if (toTs != null) {
      queryParams.addAll(_queryParams('', 'to_ts', toTs));
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
  /// * [List<String>] sourceIds:
  ///   Get articles from specific sources; either by their ids or keys
  ///
  /// * [String] lang:
  ///   The article Preferred language - English (EN), Portuguese (PT), Espanol (ES)
  ///
  /// * [List<String>] categories:
  ///   News article categories to return
  ///
  /// * [List<String>] excludeCategories:
  ///   News article categories to exclude from results
  ///
  /// * [int] toTs:
  ///   Articles published on or before this timestamp
  Future<GENERICRESPONSE?> newsV1ArticleList({ List<String>? sourceIds, String? lang, List<String>? categories, List<String>? excludeCategories, int? toTs, }) async {
    final response = await newsV1ArticleListWithHttpInfo( sourceIds: sourceIds, lang: lang, categories: categories, excludeCategories: excludeCategories, toTs: toTs, );
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

  /// Performs an HTTP 'GET /news/v1/category/list' operation and returns the [Response].
  Future<Response> newsV1CategoryListWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/news/v1/category/list';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  Future<GENERICRESPONSE?> newsV1CategoryList() async {
    final response = await newsV1CategoryListWithHttpInfo();
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

  /// Performs an HTTP 'GET /news/v1/source/list' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] lang:
  ///   The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES)
  ///
  /// * [String] type:
  ///   RSS, API, TWITTER
  ///
  /// * [String] status:
  ///   The status for the  article source entry. Allowed values: ACTIVE, INACTIVE
  Future<Response> newsV1SourceListWithHttpInfo({ String? lang, String? type, String? status, }) async {
    // ignore: prefer_const_declarations
    final path = r'/news/v1/source/list';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (lang != null) {
      queryParams.addAll(_queryParams('', 'lang', lang));
    }
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
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
  /// * [String] lang:
  ///   The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES)
  ///
  /// * [String] type:
  ///   RSS, API, TWITTER
  ///
  /// * [String] status:
  ///   The status for the  article source entry. Allowed values: ACTIVE, INACTIVE
  Future<GENERICRESPONSE?> newsV1SourceList({ String? lang, String? type, String? status, }) async {
    final response = await newsV1SourceListWithHttpInfo( lang: lang, type: type, status: status, );
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
