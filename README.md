# E2E Test Code Coverage for Android
1. Run end-to-end tests will automatically generate coverage data on the emulator. Run all tests by executing `./gradlew cucumber` 
2. After running the tests, run `./gradlew jacocoTestReport` in the android directory of https://github.com/nerds-odd-e/attd-v2 to download the coverage data and generate a report. If you encounter a Permission Denied error, please execute `adb root` first.
3. The coverage-related test configuration and code have been separated from the production code, so these codes will not be included in the final released apk.
