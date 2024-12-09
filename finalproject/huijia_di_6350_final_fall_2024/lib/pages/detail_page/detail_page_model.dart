import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'detail_page_widget.dart' show DetailPageWidget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class DetailPageModel extends FlutterFlowModel<DetailPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    debugLogWidgetClass(this);
  }

  @override
  void dispose() {}

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetParameters: {
          'title': debugSerializeParam(
            widget?.title,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/to-do-fall-2024-pm0n1j?tab=uiBuilder&page=DetailPage',
            searchReference:
                'reference=SiAKDwoFdGl0bGUSBjY5ZjRpcSoHEgVUaXRsZXIECAMgAVABWgV0aXRsZQ==',
            name: 'String',
            nullable: false,
          ),
          'decs': debugSerializeParam(
            widget?.decs,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/to-do-fall-2024-pm0n1j?tab=uiBuilder&page=DetailPage',
            searchReference:
                'reference=SiUKDgoEZGVjcxIGaDRyd2NpKg0SC2Rlc2NyaXB0aW9ucgQIAyABUAFaBGRlY3M=',
            name: 'String',
            nullable: false,
          ),
          'price': debugSerializeParam(
            widget?.price,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/to-do-fall-2024-pm0n1j?tab=uiBuilder&page=DetailPage',
            searchReference:
                'reference=SiAKDwoFcHJpY2USBmE5Y2libCoHEgVwcmljZXIECAMgAVABWgVwcmljZQ==',
            name: 'String',
            nullable: false,
          ),
          'i1': debugSerializeParam(
            widget?.i1,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/to-do-fall-2024-pm0n1j?tab=uiBuilder&page=DetailPage',
            searchReference:
                'reference=ShQKDAoCaTESBm42bG51dHIECAQgAVABWgJpMQ==',
            name: 'String',
            nullable: true,
          ),
          'i2': debugSerializeParam(
            widget?.i2,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/to-do-fall-2024-pm0n1j?tab=uiBuilder&page=DetailPage',
            searchReference:
                'reference=ShQKDAoCaTISBnhra2dndXIECAQgAVABWgJpMg==',
            name: 'String',
            nullable: true,
          ),
          'i3': debugSerializeParam(
            widget?.i3,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/to-do-fall-2024-pm0n1j?tab=uiBuilder&page=DetailPage',
            searchReference:
                'reference=ShQKDAoCaTMSBjg4aWxwZHIECAQgAVABWgJpMw==',
            name: 'String',
            nullable: true,
          ),
          'i4': debugSerializeParam(
            widget?.i4,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/to-do-fall-2024-pm0n1j?tab=uiBuilder&page=DetailPage',
            searchReference:
                'reference=ShQKDAoCaTQSBmVmcjZ5aHIECAQgAVABWgJpNA==',
            name: 'String',
            nullable: true,
          )
        }.withoutNulls,
        widgetStates: {
          'pageViewCurrentIndex': debugSerializeParam(
            pageViewCurrentIndex,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/to-do-fall-2024-pm0n1j?tab=uiBuilder&page=DetailPage',
            name: 'int',
            nullable: true,
          )
        },
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
            'https://app.flutterflow.io/project/to-do-fall-2024-pm0n1j/tab=uiBuilder&page=DetailPage',
        searchReference: 'reference=OgpEZXRhaWxQYWdlUAFaCkRldGFpbFBhZ2U=',
        widgetClassName: 'DetailPage',
      );
}
