import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for ReferenceRatesApi
void main() {
  final instance = Openapi().getReferenceRatesApi();

  group(ReferenceRatesApi, () {
    //Future<GENERICRESPONSE> indexCcV1HistoricalDays(String market, String instrument, { BuiltList<String> groups, int limit, int toTs, int aggregate, bool fill, String mappingPriority, String responseFormat }) async
    test('test indexCcV1HistoricalDays', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> indexCcV1HistoricalHours(String market, String instrument, { BuiltList<String> groups, int limit, int toTs, int aggregate, bool fill, String mappingPriority, String responseFormat }) async
    test('test indexCcV1HistoricalHours', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> indexCcV1HistoricalMessages(String market, String instrument, { int afterTs, int lastCcseq, String mappingPriority, int limit, String responseFormat, bool return404OnEmptyResponse }) async
    test('test indexCcV1HistoricalMessages', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> indexCcV1HistoricalMessagesHour(String market, String instrument, { int hourTs, String mappingPriority, String responseFormat, bool return404OnEmptyResponse }) async
    test('test indexCcV1HistoricalMessagesHour', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> indexCcV1HistoricalMinutes(String market, String instrument, { BuiltList<String> groups, int limit, int toTs, int aggregate, bool fill, String mappingPriority, String responseFormat }) async
    test('test indexCcV1HistoricalMinutes', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> indexCcV1LatestInstrumentMetadata(String market, BuiltList<String> instruments, { BuiltList<String> groups, String mappingPriority }) async
    test('test indexCcV1LatestInstrumentMetadata', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> indexCcV1LatestTick(String market, BuiltList<String> instruments, { BuiltList<String> groups, String mappingPriority }) async
    test('test indexCcV1LatestTick', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> indexCcV1Markets({ String market }) async
    test('test indexCcV1Markets', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> indexCcV1MarketsInstruments({ String market, String instrument, BuiltList<String> instrumentStatus }) async
    test('test indexCcV1MarketsInstruments', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> indexCcV1MarketsInstrumentsUnmapped({ String market, String instrument, BuiltList<String> instrumentStatus }) async
    test('test indexCcV1MarketsInstrumentsUnmapped', () async {
      // TODO
    });

  });
}
