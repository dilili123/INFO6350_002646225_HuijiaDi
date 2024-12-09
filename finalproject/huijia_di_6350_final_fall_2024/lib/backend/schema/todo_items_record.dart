import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TodoItemsRecord extends FirestoreRecord {
  TodoItemsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "RefImage" field.
  String? _refImage;
  String get refImage => _refImage ?? '';
  bool hasRefImage() => _refImage != null;

  void _initializeFields() {
    _title = snapshotData['Title'] as String?;
    _description = snapshotData['Description'] as String?;
    _refImage = snapshotData['RefImage'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('todo_items');

  static Stream<TodoItemsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TodoItemsRecord.fromSnapshot(s));

  static Future<TodoItemsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TodoItemsRecord.fromSnapshot(s));

  static TodoItemsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TodoItemsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TodoItemsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TodoItemsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TodoItemsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TodoItemsRecord &&
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
        'Description': debugSerializeParam(
          description,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/to-do-fall-2024-pm0n1j?tab=database',
          name: 'String',
          nullable: false,
        ),
        'RefImage': debugSerializeParam(
          refImage,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/to-do-fall-2024-pm0n1j?tab=database',
          name: 'String',
          nullable: false,
        )
      };
}

Map<String, dynamic> createTodoItemsRecordData({
  String? title,
  String? description,
  String? refImage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Title': title,
      'Description': description,
      'RefImage': refImage,
    }.withoutNulls,
  );

  return firestoreData;
}

class TodoItemsRecordDocumentEquality implements Equality<TodoItemsRecord> {
  const TodoItemsRecordDocumentEquality();

  @override
  bool equals(TodoItemsRecord? e1, TodoItemsRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.refImage == e2?.refImage;
  }

  @override
  int hash(TodoItemsRecord? e) =>
      const ListEquality().hash([e?.title, e?.description, e?.refImage]);

  @override
  bool isValidKey(Object? o) => o is TodoItemsRecord;
}
