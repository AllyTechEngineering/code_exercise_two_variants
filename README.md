# Flutter - Anywhere Mobile Engineer Candidate Code Exercise
- Developer: Bob Taylor 
- email bob.mscs.mba@gmail.com
- cell: 949.903.3489
- Drawing from my experince developing other apps and my software training experinces, I developed all of the code in this app.
## Two variants created using Flutter Flavors
- flutter_flavorizr package used to handle the setup of Flutter Flavors.
- flavorizr.yaml is where all of the bundle and other info for Flutter Flavors are stored.
- Use VS Code IDE to select debug, profile or production using the debug pull down.
- The system uses .vscode json file to make the debug pull down work.
- Or use CLI in root dir:
    - flutter run --flavor simpsons_char_viewer -t lib/main_simpsons_char_viewer.dart
    - flutter run --falvor wire_char_viewer -t lib/main_wire_char_viewer.dart
- Variant one: Simpsons Character Viewer
    - Data API: http://api.duckduckgo.com/?q=simpsons+characters&format=json
    - bundle: com.sample.simpsonsviewer
- Variant two: The Wire Character Viewer
    - Data API: http://api.duckduckgo.com/?q=the+wire+characters&format=json
    - bundle com.sample.wireviewer
- flavor.dart: manage flavors and is used to make build selected variables accessible to the app variants.
## State management - BLoC architecture
 - display data cubit
 - search data cubit
 - data repository
 ## Packages Used
  - flutter_device_type used to detect phone or tablet and change the UI.
  - cached_network_image used to provide a default icon when an image was null.
  ## Other
  - theme.dart used to control the app theme
  - constant.dart used to store api and other future contants.
  ## Know Issues and areas for improvement:
  - The package used for images that are null needs to be updated to catch uncaught exceptions. App works but this needs to be resolved before production.
  - Additional error management with AlertDialogs to alert the user to network issues needs to be added.
  - UI styling needs input from TBD persons to select typography and color schemes. Using theme.dart these changes can be applied without refactoring hard coded styling.
  ## Testing
  - Testing performed on various emulator Android tablets and phones.
  - Testing performed on various simulators - iOS - iPads and iPhones.
  - Additional Flutter unit, widget and integration test code needs to be developed.
  - search_screen_test.dart
  - detail_screen_test.dart
  - code_exercise_list_screen_test.dart
