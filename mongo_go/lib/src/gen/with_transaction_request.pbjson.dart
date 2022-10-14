///
//  Generated code. Do not modify.
//  source: with_transaction_request.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use withTransactionRequestDescriptor instead')
const WithTransactionRequest$json = const {
  '1': 'WithTransactionRequest',
  '2': const [
    const {
      '1': 'connectionOid',
      '3': 1,
      '4': 1,
      '5': 12,
      '10': 'connectionOid'
    },
    const {'1': 'sessionOid', '3': 2, '4': 1, '5': 12, '10': 'sessionOid'},
  ],
};

/// Descriptor for `WithTransactionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List withTransactionRequestDescriptor =
    $convert.base64Decode(
        'ChZXaXRoVHJhbnNhY3Rpb25SZXF1ZXN0EiQKDWNvbm5lY3Rpb25PaWQYASABKAxSDWNvbm5lY3Rpb25PaWQSHgoKc2Vzc2lvbk9pZBgCIAEoDFIKc2Vzc2lvbk9pZA==');
