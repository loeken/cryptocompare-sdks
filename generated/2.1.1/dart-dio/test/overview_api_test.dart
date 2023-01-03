import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for OverviewApi
void main() {
  final instance = Openapi().getOverviewApi();

  group(OverviewApi, () {
    //Future<GENERICRESPONSE> overviewV1HistoricalMarketcapAllAssetsDays({ BuiltList<String> groups, int limit, int toTs, int aggregate, bool fill, String responseFormat }) async
    test('test overviewV1HistoricalMarketcapAllAssetsDays', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> overviewV1HistoricalMarketcapAllAssetsHours({ BuiltList<String> groups, int limit, int toTs, int aggregate, bool fill, String responseFormat }) async
    test('test overviewV1HistoricalMarketcapAllAssetsHours', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> overviewV1HistoricalMarketcapFtwAssetsDays({ BuiltList<String> groups, int limit, int toTs, int aggregate, bool fill, String responseFormat }) async
    test('test overviewV1HistoricalMarketcapFtwAssetsDays', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> overviewV1HistoricalMarketcapFtwAssetsHours({ BuiltList<String> groups, int limit, int toTs, int aggregate, bool fill, String responseFormat }) async
    test('test overviewV1HistoricalMarketcapFtwAssetsHours', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> overviewV1LatestMarketcapAllTick({ BuiltList<String> groups }) async
    test('test overviewV1LatestMarketcapAllTick', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> overviewV1LatestMarketcapFtwTick({ BuiltList<String> groups }) async
    test('test overviewV1LatestMarketcapFtwTick', () async {
      // TODO
    });

  });
}
