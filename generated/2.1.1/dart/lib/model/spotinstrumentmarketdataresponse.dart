//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SPOTINSTRUMENTMARKETDATARESPONSE {
  /// Returns a new [SPOTINSTRUMENTMARKETDATARESPONSE] instance.
  SPOTINSTRUMENTMARKETDATARESPONSE({
    this.data = const {},
    this.err,
  });

  Map<String, SPOTINSTRUMENTMARKETDATA> data;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SPOTINSTRUMENTMARKETDATARESPONSEErr? err;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SPOTINSTRUMENTMARKETDATARESPONSE &&
     other.data == data &&
     other.err == err;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data.hashCode) +
    (err == null ? 0 : err!.hashCode);

  @override
  String toString() => 'SPOTINSTRUMENTMARKETDATARESPONSE[data=$data, err=$err]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'Data'] = this.data;
    if (this.err != null) {
      json[r'Err'] = this.err;
    } else {
      json[r'Err'] = null;
    }
    return json;
  }

  /// Returns a new [SPOTINSTRUMENTMARKETDATARESPONSE] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SPOTINSTRUMENTMARKETDATARESPONSE? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SPOTINSTRUMENTMARKETDATARESPONSE[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SPOTINSTRUMENTMARKETDATARESPONSE[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SPOTINSTRUMENTMARKETDATARESPONSE(
        data: SPOTINSTRUMENTMARKETDATA.mapFromJson(json[r'Data']) ?? const {},
        err: SPOTINSTRUMENTMARKETDATARESPONSEErr.fromJson(json[r'Err']),
      );
    }
    return null;
  }

  static List<SPOTINSTRUMENTMARKETDATARESPONSE>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SPOTINSTRUMENTMARKETDATARESPONSE>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SPOTINSTRUMENTMARKETDATARESPONSE.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SPOTINSTRUMENTMARKETDATARESPONSE> mapFromJson(dynamic json) {
    final map = <String, SPOTINSTRUMENTMARKETDATARESPONSE>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SPOTINSTRUMENTMARKETDATARESPONSE.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SPOTINSTRUMENTMARKETDATARESPONSE-objects as value to a dart map
  static Map<String, List<SPOTINSTRUMENTMARKETDATARESPONSE>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SPOTINSTRUMENTMARKETDATARESPONSE>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SPOTINSTRUMENTMARKETDATARESPONSE.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

