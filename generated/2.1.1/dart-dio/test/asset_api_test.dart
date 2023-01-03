import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for AssetApi
void main() {
  final instance = Openapi().getAssetApi();

  group(AssetApi, () {
    //Future<GENERICRESPONSE> assetV1DataByAddress(String address, String chainSymbol, { String groups }) async
    test('test assetV1DataByAddress', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> assetV1DataById(int assetId, { String groups }) async
    test('test assetV1DataById', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> assetV1DataBySymbol(String assetSymbol, { String groups }) async
    test('test assetV1DataBySymbol', () async {
      // TODO
    });

    //Future<GENERICRESPONSE> assetV1TopList({ int page, int pageSize, String assetType, String sortBy, String sortDirection, String groups }) async
    test('test assetV1TopList', () async {
      // TODO
    });

  });
}
