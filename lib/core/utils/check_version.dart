import 'package:flutter/services.dart';
import 'package:yaml/yaml.dart';

class VersionHelper {
  static Future<String> getCurrentVersion() async {
    var r = await rootBundle.loadString("pubspec.yaml");
    var pubspec = loadYaml(r);
    var version = pubspec["version"].toString().split('+')[0];
    return version;
  }

  static Future getVersionUpdate(String? versionInfo) async {
    // final ctx = globalInjection<GlobalKey<NavigatorState>>().currentContext!;
    // bool isRequired = false;
    // var r = await rootBundle.loadString("pubspec.yaml");
    // var pubspec = loadYaml(r);

    // var version = pubspec["version"].toString().split('+')[0];
    // var newVersion = versionInfo?.number?.split('+')[0];
    // if (version != newVersion && ctx.mounted) {
    //   isRequired = versionInfo?.isMandatory ?? false;
    //   debugPrint("is required: $isRequired");
    // showDialog(
    //     context: ctx,
    //     barrierDismissible: !isRequired,
    //     builder: (ctx) => AlertDialog(
    //           title: const Text(
    //             "New Version Available",
    //             style: style18w500Black,
    //           ),
    //           content: Padding(
    //             padding: const EdgeInsets.all(8.0),
    //             child: WillPopScope(
    //               onWillPop: isRequired
    //                   ? () async => false
    //                   : () {
    //                       ctx.pop();

    //                       return Future.value(true);
    //                     },
    //               child: const Text(
    //                 "New version of the app is available. Please update to the latest version.",
    //                 style: TextStyle(fontSize: 18),
    //               ),
    //             ),
    //           ),
    //           actions: [
    //             ElevatedButton(
    //               child: const Text("Update"),
    //               onPressed: () {
    //                 launchUrl(
    //                   Uri.parse(
    //                     versionInfo?.downloadLink ?? '',
    //                   ),
    //                 );
    //               },
    //             ),
    //             const SizedBox(height: 40),
    //             isRequired
    //                 ? const SizedBox.shrink()
    //                 : ElevatedButton(
    //                     child: const Text("Cancel"),
    //                     onPressed: () {
    //                       ctx.pop();
    //                     },
    //                   ),
    //             isRequired
    //                 ? ElevatedButton(
    //                     child: const Text("Exit"),
    //                     onPressed: () {
    //                       SystemChannels.platform
    //                           .invokeMethod('SystemNavigator.pop');
    //                     },
    //                   )
    //                 : const SizedBox.shrink(),
    //           ],
    //         ));
    // } else {
    // return runApp(MyApp());
    // Get.offAllNamed("/home");
    // }
  }
}
