import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for SpotApi
void main() {
  final instance = Openapi().getSpotApi();

  group(SpotApi, () {
    //Future<SPOTINSTRUMENTHISTODATARESPONSE> spotV1HistoricalDays(String market, String instrument, { BuiltList<String> groups, int limit, int toTs, int aggregate, bool fill, String mappingPriority, String responseFormat }) async
    test('test spotV1HistoricalDays', () async {
      // TODO
    });

    //Future<SPOTINSTRUMENTHISTODATARESPONSE> spotV1HistoricalHours(String market, String instrument, { BuiltList<String> groups, int limit, int toTs, int aggregate, bool fill, String mappingPriority, String responseFormat }) async
    test('test spotV1HistoricalHours', () async {
      // TODO
    });

    //Future<SPOTINSTRUMENTHISTODATARESPONSE> spotV1HistoricalMinutes(String market, String instrument, { BuiltList<String> groups, int limit, int toTs, int aggregate, bool fill, String mappingPriority, String responseFormat }) async
    test('test spotV1HistoricalMinutes', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> spotV1HistoricalOrderbookL2SnapshotMinute(String market, String instrument, int minuteTs, { int depth, String mappingPriority, String responseFormat }) async
    test('test spotV1HistoricalOrderbookL2SnapshotMinute', () async {
      // TODO
    });

    //Future<SPOTINSTRUMENTTRADERESPONSE> spotV1HistoricalTrades(String market, String instrument, { int afterTs, int lastCcseq, int limit, String mappingPriority, String responseFormat, bool return404OnEmptyResponse }) async
    test('test spotV1HistoricalTrades', () async {
      // TODO
    });

    //Future<SPOTINSTRUMENTTRADERESPONSE> spotV1HistoricalTradesHour(String market, String instrument, { int hourTs, String mappingPriority, String responseFormat, bool return404OnEmptyResponse }) async
    test('test spotV1HistoricalTradesHour', () async {
      // TODO
    });

    //Future<SPOTINSTRUMENTMETADATARESPONSE> spotV1LatestInstrumentMetadata(String market, BuiltList<String> instruments, { BuiltList<String> groups, String mappingPriority }) async
    test('test spotV1LatestInstrumentMetadata', () async {
      // TODO
    });

    //Future<SPOTINSTRUMENTMARKETDATARESPONSE> spotV1LatestTick(String market, BuiltList<String> instruments, { BuiltList<String> groups, String mappingPriority }) async
    test('test spotV1LatestTick', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> spotV1Markets({ String market }) async
    test('test spotV1Markets', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> spotV1MarketsInstruments({ String market, String instrument, BuiltList<String> instrumentStatus }) async
    test('test spotV1MarketsInstruments', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> spotV1MarketsInstrumentsUnmapped({ String market, String instrument, BuiltList<String> instrumentStatus }) async
    test('test spotV1MarketsInstrumentsUnmapped', () async {
      // TODO
    });

  });
}
