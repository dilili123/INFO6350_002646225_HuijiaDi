import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostRecord extends FirestoreRecord {
  PostRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "Price" field.
  String? _price;
  String get price => _price ?? '';
  bool hasPrice() => _price != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "i1" field.
  String? _i1;
  String get i1 => _i1 ?? '';
  bool hasI1() => _i1 != null;

  // "i2" field.
  String? _i2;
  String get i2 => _i2 ?? '';
  bool hasI2() => _i2 != null;

  // "i3" field.
  String? _i3;
  String get i3 => _i3 ?? '';
  bool hasI3() => _i3 != null;

  // "i4" field.
  String? _i4;
  String get i4 => _i4 ?? '';
  bool hasI4() => _i4 != null;

  void _initializeFields() {
    _title = snapshotData['Title'] as String?;
    _price = snapshotData['Price'] as String?;
    _description = snapshotData['Description'] as String?;
    _i1 = snapshotData['i1'] as String?;
    _i2 = snapshotData['i2'] as String?;
    _i3 = snapshotData['i3'] as String?;
    _i4 = snapshotData['i4'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('POST');

  static Stream<PostRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostRecord.fromSnapshot(s));

  static Future<PostRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostRecord.fromSnapshot(s));

  static PostRecord fromSnapshot(DocumentSnapshot snapshot) => PostRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostRecord &&
      reference.path.hashCode == other.reference.path.hashCode;

  @override
  Map<String, DebugDataField> toDebugSerializableMap() => {
        'reference': debugSerializeParam(
          reference,
          ParamType.DocumentReference,
          link:
              'https://app.flutterflow.io/project/to-do-fall-2024-pm0n1j?tab=database',
          name: '',
          nullable: false,
        ),
        'Title': debugSerializeParam(
          title,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/to-do-fall-2024-pm0n1j?tab=database',
          name: 'String',
          nullable: false,
        ),
        'Price': debugSerializeParam(
          price,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/to-do-fall-2024-pm0n1j?tab=database',
          name: 'String',
          nullable: false,
        ),
        'Description': debugSerializeParam(
          description,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/to-do-fall-2024-pm0n1j?tab=database',
          name: 'String',
          nullable: false,
        ),
        'i1': debugSerializeParam(
          i1,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/to-do-fall-2024-pm0n1j?tab=database',
          name: 'String',
          nullable: false,
        ),
        'i2': debugSerializeParam(
          i2,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/to-do-fall-2024-pm0n1j?tab=database',
          name: 'String',
          nullable: false,
        ),
        'i3': debugSerializeParam(
          i3,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/to-do-fall-2024-pm0n1j?tab=database',
          name: 'String',
          nullable: false,
        ),
        'i4': debugSerializeParam(
          i4,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/to-do-fall-2024-pm0n1j?tab=database',
          name: 'String',
          nullable: false,
        )
      };
}

Map<String, dynamic> createPostRecordData({
  String? title,
  String? price,
  String? description,
  String? i1,
  String? i2,
  String? i3,
  String? i4,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Title': title,
      'Price': price,
      'Description': description,
      'i1': i1,
      'i2': i2,
      'i3': i3,
      'i4': i4,
    }.withoutNulls,
  );

  return firestoreData;
}

class PostRecordDocumentEquality implements Equality<PostRecord> {
  const PostRecordDocumentEquality();

  @override
  bool equals(PostRecord? e1, PostRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.price == e2?.price &&
        e1?.description == e2?.description &&
        e1?.i1 == e2?.i1 &&
        e1?.i2 == e2?.i2 &&
        e1?.i3 == e2?.i3 &&
        e1?.i4 == e2?.i4;
  }

  @override
  int hash(PostRecord? e) => const ListEquality()
      .hash([e?.title, e?.price, e?.description, e?.i1, e?.i2, e?.i3, e?.i4]);

  @override
  bool isValidKey(Object? o) => o is PostRecord;
}
