import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for FuturesApi
void main() {
  final instance = Openapi().getFuturesApi();

  group(FuturesApi, () {
    //Future<GENERICRESPONSE> futuresV1HistoricalDays(String market, String instrument, { BuiltList<String> groups, int limit, int toTs, int aggregate, bool fill, String mappingPriority, String responseFormat }) async
    test('test futuresV1HistoricalDays', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> futuresV1HistoricalFundingRateDays(String market, String instrument, { BuiltList<String> groups, int limit, int toTs, int aggregate, bool fill, String mappingPriority, String responseFormat }) async
    test('test futuresV1HistoricalFundingRateDays', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> futuresV1HistoricalFundingRateHours(String market, String instrument, { BuiltList<String> groups, int limit, int toTs, int aggregate, bool fill, String mappingPriority, String responseFormat }) async
    test('test futuresV1HistoricalFundingRateHours', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> futuresV1HistoricalFundingRateMessages(String market, String instrument, { int afterTs, int lastCcseq, int limit, String mappingPriority, String responseFormat, bool return404OnEmptyResponse }) async
    test('test futuresV1HistoricalFundingRateMessages', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> futuresV1HistoricalFundingRateMessagesHour(String market, String instrument, { int hourTs, String mappingPriority, String responseFormat, bool return404OnEmptyResponse }) async
    test('test futuresV1HistoricalFundingRateMessagesHour', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> futuresV1HistoricalFundingRateMinutes(String market, String instrument, { BuiltList<String> groups, int limit, int toTs, int aggregate, bool fill, String mappingPriority, String responseFormat }) async
    test('test futuresV1HistoricalFundingRateMinutes', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> futuresV1HistoricalHours(String market, String instrument, { BuiltList<String> groups, int limit, int toTs, int aggregate, bool fill, String mappingPriority, String responseFormat }) async
    test('test futuresV1HistoricalHours', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> futuresV1HistoricalMinutes(String market, String instrument, { BuiltList<String> groups, int limit, int toTs, int aggregate, bool fill, String mappingPriority, String responseFormat }) async
    test('test futuresV1HistoricalMinutes', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> futuresV1HistoricalOpenInterestDays(String market, String instrument, { BuiltList<String> groups, int limit, int toTs, int aggregate, bool fill, String mappingPriority, String responseFormat }) async
    test('test futuresV1HistoricalOpenInterestDays', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> futuresV1HistoricalOpenInterestHours(String market, String instrument, { BuiltList<String> groups, int limit, int toTs, int aggregate, bool fill, String mappingPriority, String responseFormat }) async
    test('test futuresV1HistoricalOpenInterestHours', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> futuresV1HistoricalOpenInterestMessages(String market, String instrument, { int afterTs, int lastCcseq, int limit, String mappingPriority, String responseFormat, bool return404OnEmptyResponse }) async
    test('test futuresV1HistoricalOpenInterestMessages', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> futuresV1HistoricalOpenInterestMessagesHour(String market, String instrument, { int hourTs, String mappingPriority, String responseFormat, bool return404OnEmptyResponse }) async
    test('test futuresV1HistoricalOpenInterestMessagesHour', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> futuresV1HistoricalOpenInterestMinutes(String market, String instrument, { BuiltList<String> groups, int limit, int toTs, int aggregate, bool fill, String mappingPriority, String responseFormat }) async
    test('test futuresV1HistoricalOpenInterestMinutes', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> futuresV1HistoricalTrades(String market, String instrument, { int afterTs, int lastCcseq, int limit, String mappingPriority, String responseFormat, bool return404OnEmptyResponse }) async
    test('test futuresV1HistoricalTrades', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> futuresV1HistoricalTradesHour(String market, String instrument, { int hourTs, String mappingPriority, String responseFormat, bool return404OnEmptyResponse }) async
    test('test futuresV1HistoricalTradesHour', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> futuresV1LatestFundingRateTick(String market, BuiltList<String> instruments, { BuiltList<String> groups, String mappingPriority }) async
    test('test futuresV1LatestFundingRateTick', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> futuresV1LatestInstrumentMetadata(String market, BuiltList<String> instruments, { BuiltList<String> groups, String mappingPriority }) async
    test('test futuresV1LatestInstrumentMetadata', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> futuresV1LatestOpenInterestTick(String market, BuiltList<String> instruments, { BuiltList<String> groups, String mappingPriority }) async
    test('test futuresV1LatestOpenInterestTick', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> futuresV1LatestTick(String market, BuiltList<String> instruments, { BuiltList<String> groups, String mappingPriority }) async
    test('test futuresV1LatestTick', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> futuresV1Markets({ String market }) async
    test('test futuresV1Markets', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> futuresV1MarketsInstruments({ String market, String instrument, BuiltList<String> instrumentStatus }) async
    test('test futuresV1MarketsInstruments', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> futuresV1MarketsInstrumentsUnmapped({ String market, String instrument, BuiltList<String> instrumentStatus }) async
    test('test futuresV1MarketsInstrumentsUnmapped', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> indexV1HistoricalDays(String market, String instrument, { BuiltList<String> groups, int limit, int toTs, int aggregate, bool fill, String mappingPriority, String responseFormat }) async
    test('test indexV1HistoricalDays', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> indexV1HistoricalHours(String market, String instrument, { BuiltList<String> groups, int limit, int toTs, int aggregate, bool fill, String mappingPriority, String responseFormat }) async
    test('test indexV1HistoricalHours', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> indexV1HistoricalMessages(String market, String instrument, { int afterTs, int lastCcseq, int limit, String mappingPriority, String responseFormat, bool return404OnEmptyResponse }) async
    test('test indexV1HistoricalMessages', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> indexV1HistoricalMessagesHour(String market, String instrument, { int hourTs, String mappingPriority, String responseFormat, bool return404OnEmptyResponse }) async
    test('test indexV1HistoricalMessagesHour', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> indexV1HistoricalMinutes(String market, String instrument, { BuiltList<String> groups, int limit, int toTs, int aggregate, bool fill, String mappingPriority, String responseFormat }) async
    test('test indexV1HistoricalMinutes', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> indexV1LatestInstrumentMetadata(String market, BuiltList<String> instruments, { BuiltList<String> groups, String mappingPriority }) async
    test('test indexV1LatestInstrumentMetadata', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> indexV1LatestTick(String market, BuiltList<String> instruments, { BuiltList<String> groups, String mappingPriority }) async
    test('test indexV1LatestTick', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> indexV1Markets({ String market }) async
    test('test indexV1Markets', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> indexV1MarketsInstruments({ String market, String instrument, BuiltList<String> instrumentStatus }) async
    test('test indexV1MarketsInstruments', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> indexV1MarketsInstrumentsUnmapped({ String market, String instrument, BuiltList<String> instrumentStatus }) async
    test('test indexV1MarketsInstrumentsUnmapped', () async {
      // TODO
    });

  });
}
