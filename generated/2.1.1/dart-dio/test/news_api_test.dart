import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for NewsApi
void main() {
  final instance = Openapi().getNewsApi();

  group(NewsApi, () {
    //Future<GENERICRESPONSE> newsV1ArticleList({ BuiltList<String> sourceIds, String lang, BuiltList<String> categories, BuiltList<String> excludeCategories, int toTs }) async
    test('test newsV1ArticleList', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> newsV1CategoryList() async
    test('test newsV1CategoryList', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> newsV1SourceList({ String lang, String type, String status }) async
    test('test newsV1SourceList', () async {
      // TODO
    });

  });
}
