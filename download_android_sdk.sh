#!/bin/bash
# tools is placed at the end as it has dependency on platform sdk tools
# build-tools-21.1.1
# build-tools-21.1.0
# build-tools-21.0.2
# build-tools-21.0.1
# build-tools-21.0.0
# build-tools-23.0.2
# build-tools-23.0.1
# build-tools-23.0.0
# build-tools-22.0.0
listOfSDK="
platform-tools
build-tools-24.0.3
build-tools-24.0.2
build-tools-24.0.1
build-tools-24.0.0
build-tools-23.0.3
build-tools-22.0.1
build-tools-21.1.2
build-tools-20.0.0
build-tools-19.1.0
android-24
android-23
android-22
android-21
android-20
android-19
addon-google_apis-google-24
addon-google_apis-google-23
addon-google_apis-google-22
addon-google_apis-google-21
addon-google_apis-google-19
extra-android-m2repository
extra-google-google_play_services
extra-google-m2repository
extra-google-market_apk_expansion
extra-google-market_licensing
tools"

function install_sdk {
  android-sdk-linux/tools/android update sdk --no-ui --all --filter "$1"

}

for package_index in  ${listOfSDK}
do
  echo "====================================================================="
  echo "Start to install package:  ${package_index}"
  echo "====================================================================="
  # Auto accept license
  echo -e "y" | install_sdk "${package_index}"
  echo
  echo
done
