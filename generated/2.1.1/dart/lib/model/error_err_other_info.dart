//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ErrorErrOtherInfo {
  /// Returns a new [ErrorErrOtherInfo] instance.
  ErrorErrOtherInfo({
    this.param,
    this.values = const [],
  });

  /// The parameter that is resposible for the error
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? param;

  /// The values resposible for the error
  List<String> values;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ErrorErrOtherInfo &&
     other.param == param &&
     other.values == values;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (param == null ? 0 : param!.hashCode) +
    (values.hashCode);

  @override
  String toString() => 'ErrorErrOtherInfo[param=$param, values=$values]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.param != null) {
      json[r'param'] = this.param;
    } else {
      json[r'param'] = null;
    }
      json[r'values'] = this.values;
    return json;
  }

  /// Returns a new [ErrorErrOtherInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ErrorErrOtherInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ErrorErrOtherInfo[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ErrorErrOtherInfo[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ErrorErrOtherInfo(
        param: mapValueOfType<String>(json, r'param'),
        values: json[r'values'] is List
            ? (json[r'values'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<ErrorErrOtherInfo>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ErrorErrOtherInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ErrorErrOtherInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ErrorErrOtherInfo> mapFromJson(dynamic json) {
    final map = <String, ErrorErrOtherInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ErrorErrOtherInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ErrorErrOtherInfo-objects as value to a dart map
  static Map<String, List<ErrorErrOtherInfo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ErrorErrOtherInfo>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ErrorErrOtherInfo.listFromJson(entry.value, growable: growable,);
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

