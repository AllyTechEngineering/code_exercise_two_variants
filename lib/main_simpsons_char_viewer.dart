import 'flavors.dart';

import 'main.dart' as runner;

Future<void> main() async {
  F.appFlavor = Flavor.simpsonsCharViewer;
  await runner.main();
}
