//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:openapi/src/date_serializer.dart';
import 'package:openapi/src/model/date.dart';

import 'package:openapi/src/model/error.dart';
import 'package:openapi/src/model/error_err.dart';
import 'package:openapi/src/model/error_err_other_info.dart';
import 'package:openapi/src/model/genericresponse.dart';
import 'package:openapi/src/model/genericresponse_data.dart';
import 'package:openapi/src/model/spotinstrumenthistodata.dart';
import 'package:openapi/src/model/spotinstrumenthistodataresponse.dart';
import 'package:openapi/src/model/spotinstrumentmarketdata.dart';
import 'package:openapi/src/model/spotinstrumentmarketdataresponse.dart';
import 'package:openapi/src/model/spotinstrumentmarketdataresponse_err.dart';
import 'package:openapi/src/model/spotinstrumentmarketdataresponse_err_other_info.dart';
import 'package:openapi/src/model/spotinstrumentmetadata.dart';
import 'package:openapi/src/model/spotinstrumentmetadataresponse.dart';
import 'package:openapi/src/model/spotinstrumenttrade.dart';
import 'package:openapi/src/model/spotinstrumenttraderesponse.dart';

part 'serializers.g.dart';

@SerializersFor([
  Error,
  ErrorErr,
  ErrorErrOtherInfo,
  GENERICRESPONSE,
  GENERICRESPONSEData,
  SPOTINSTRUMENTHISTODATA,
  SPOTINSTRUMENTHISTODATARESPONSE,
  SPOTINSTRUMENTMARKETDATA,
  SPOTINSTRUMENTMARKETDATARESPONSE,
  SPOTINSTRUMENTMARKETDATARESPONSEErr,
  SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo,
  SPOTINSTRUMENTMETADATA,
  SPOTINSTRUMENTMETADATARESPONSE,
  SPOTINSTRUMENTTRADE,
  SPOTINSTRUMENTTRADERESPONSE,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(String)]),
        () => ListBuilder<String>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
