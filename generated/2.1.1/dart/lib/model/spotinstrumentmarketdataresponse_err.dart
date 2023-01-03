//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SPOTINSTRUMENTMARKETDATARESPONSEErr {
  /// Returns a new [SPOTINSTRUMENTMARKETDATARESPONSEErr] instance.
  SPOTINSTRUMENTMARKETDATARESPONSEErr({
    this.message,
    this.otherInfo,
    this.type,
  });

  /// A message describing the error
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo? otherInfo;

  /// A public facing error type. If you want to treat a specific error use the type.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SPOTINSTRUMENTMARKETDATARESPONSEErr &&
     other.message == message &&
     other.otherInfo == otherInfo &&
     other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (message == null ? 0 : message!.hashCode) +
    (otherInfo == null ? 0 : otherInfo!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'SPOTINSTRUMENTMARKETDATARESPONSEErr[message=$message, otherInfo=$otherInfo, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.otherInfo != null) {
      json[r'other_info'] = this.otherInfo;
    } else {
      json[r'other_info'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [SPOTINSTRUMENTMARKETDATARESPONSEErr] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SPOTINSTRUMENTMARKETDATARESPONSEErr? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SPOTINSTRUMENTMARKETDATARESPONSEErr[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SPOTINSTRUMENTMARKETDATARESPONSEErr[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SPOTINSTRUMENTMARKETDATARESPONSEErr(
        message: mapValueOfType<String>(json, r'message'),
        otherInfo: SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo.fromJson(json[r'other_info']),
        type: mapValueOfType<int>(json, r'type'),
      );
    }
    return null;
  }

  static List<SPOTINSTRUMENTMARKETDATARESPONSEErr>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SPOTINSTRUMENTMARKETDATARESPONSEErr>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SPOTINSTRUMENTMARKETDATARESPONSEErr.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SPOTINSTRUMENTMARKETDATARESPONSEErr> mapFromJson(dynamic json) {
    final map = <String, SPOTINSTRUMENTMARKETDATARESPONSEErr>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SPOTINSTRUMENTMARKETDATARESPONSEErr.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SPOTINSTRUMENTMARKETDATARESPONSEErr-objects as value to a dart map
  static Map<String, List<SPOTINSTRUMENTMARKETDATARESPONSEErr>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SPOTINSTRUMENTMARKETDATARESPONSEErr>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SPOTINSTRUMENTMARKETDATARESPONSEErr.listFromJson(entry.value, growable: growable,);
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

