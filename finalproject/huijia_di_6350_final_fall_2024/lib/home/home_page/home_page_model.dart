import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    debugLogWidgetClass(this);
  }

  @override
  void dispose() {}

  /// Action blocks.
  Future back(BuildContext context) async {
    context.pushNamed(
      'DetailPage',
      queryParameters: {
        'title': serializeParam(
          '',
          ParamType.String,
        ),
        'decs': serializeParam(
          '',
          ParamType.String,
        ),
        'price': serializeParam(
          '',
          ParamType.String,
        ),
        'i1': serializeParam(
          '',
          ParamType.String,
        ),
        'i2': serializeParam(
          '',
          ParamType.String,
        ),
        'i3': serializeParam(
          '',
          ParamType.String,
        ),
        'i4': serializeParam(
          '',
          ParamType.String,
        ),
      }.withoutNulls,
    );
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        generatorVariables: debugGeneratorVariables,
        backendQueries: debugBackendQueries,
        componentStates: {
          ...widgetBuilderComponents.map(
            (key, value) => MapEntry(
              key,
              value.toWidgetClassDebugData(),
            ),
          ),
        }.withoutNulls,
        link:
            'https://app.flutterflow.io/project/to-do-fall-2024-pm0n1j/tab=uiBuilder&page=HomePage',
        searchReference: 'reference=OghIb21lUGFnZVABWghIb21lUGFnZQ==',
        widgetClassName: 'HomePage',
      );
}
