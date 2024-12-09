import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PhotosRecord extends FirestoreRecord {
  PhotosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "image1" field.
  String? _image1;
  String get image1 => _image1 ?? '';
  bool hasImage1() => _image1 != null;

  // "image2" field.
  String? _image2;
  String get image2 => _image2 ?? '';
  bool hasImage2() => _image2 != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "image3" field.
  String? _image3;
  String get image3 => _image3 ?? '';
  bool hasImage3() => _image3 != null;

  // "image4" field.
  String? _image4;
  String get image4 => _image4 ?? '';
  bool hasImage4() => _image4 != null;

  void _initializeFields() {
    _image1 = snapshotData['image1'] as String?;
    _image2 = snapshotData['image2'] as String?;
    _title = snapshotData['title'] as String?;
    _image3 = snapshotData['image3'] as String?;
    _image4 = snapshotData['image4'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('photos');

  static Stream<PhotosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PhotosRecord.fromSnapshot(s));

  static Future<PhotosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PhotosRecord.fromSnapshot(s));

  static PhotosRecord fromSnapshot(DocumentSnapshot snapshot) => PhotosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PhotosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PhotosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PhotosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PhotosRecord &&
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
        'image1': debugSerializeParam(
          image1,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/to-do-fall-2024-pm0n1j?tab=database',
          name: 'String',
          nullable: false,
        ),
        'image2': debugSerializeParam(
          image2,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/to-do-fall-2024-pm0n1j?tab=database',
          name: 'String',
          nullable: false,
        ),
        'title': debugSerializeParam(
          title,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/to-do-fall-2024-pm0n1j?tab=database',
          name: 'String',
          nullable: false,
        ),
        'image3': debugSerializeParam(
          image3,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/to-do-fall-2024-pm0n1j?tab=database',
          name: 'String',
          nullable: false,
        ),
        'image4': debugSerializeParam(
          image4,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/to-do-fall-2024-pm0n1j?tab=database',
          name: 'String',
          nullable: false,
        )
      };
}

Map<String, dynamic> createPhotosRecordData({
  String? image1,
  String? image2,
  String? title,
  String? image3,
  String? image4,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image1': image1,
      'image2': image2,
      'title': title,
      'image3': image3,
      'image4': image4,
    }.withoutNulls,
  );

  return firestoreData;
}

class PhotosRecordDocumentEquality implements Equality<PhotosRecord> {
  const PhotosRecordDocumentEquality();

  @override
  bool equals(PhotosRecord? e1, PhotosRecord? e2) {
    return e1?.image1 == e2?.image1 &&
        e1?.image2 == e2?.image2 &&
        e1?.title == e2?.title &&
        e1?.image3 == e2?.image3 &&
        e1?.image4 == e2?.image4;
  }

  @override
  int hash(PhotosRecord? e) => const ListEquality()
      .hash([e?.image1, e?.image2, e?.title, e?.image3, e?.image4]);

  @override
  bool isValidKey(Object? o) => o is PhotosRecord;
}
