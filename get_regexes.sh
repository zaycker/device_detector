#!/bin/sh

[ -e ./device-detector ] && rm -rf ./device-detector/
git clone --single-branch --depth 1 https://github.com/matomo-org/device-detector.git ./device-detector

mv -f ./device-detector/regexes/bots.yml ./src/device_detector/regex/bot.yml
mv -f ./device-detector/regexes/oss.yml ./src/device_detector/regex/os.yml
mv -f ./device-detector/regexes/vendorfragments.yml ./src/device_detector/regex/vendorfragment.yml
mv -f ./device-detector/regexes/client/browser_engine.yml ./src/device_detector/regex/browser_engine.yml
mv -f ./device-detector/regexes/client/browsers.yml ./src/device_detector/regex/browser.yml
mv -f ./device-detector/regexes/client/feed_readers.yml ./src/device_detector/regex/feed_reader.yml
mv -f ./device-detector/regexes/client/libraries.yml ./src/device_detector/regex/library.yml
mv -f ./device-detector/regexes/client/mediaplayers.yml ./src/device_detector/regex/mediaplayer.yml
mv -f ./device-detector/regexes/client/mobile_apps.yml ./src/device_detector/regex/mobile_app.yml
mv -f ./device-detector/regexes/client/pim.yml ./src/device_detector/regex/pim.yml
mv -f ./device-detector/regexes/device/cameras.yml ./src/device_detector/regex/camera.yml
mv -f ./device-detector/regexes/device/car_browsers.yml ./src/device_detector/regex/car_browser.yml
mv -f ./device-detector/regexes/device/consoles.yml ./src/device_detector/regex/console.yml
mv -f ./device-detector/regexes/device/mobiles.yml ./src/device_detector/regex/mobile.yml
mv -f ./device-detector/regexes/device/portable_media_player.yml ./src/device_detector/regex/portable_media_player.yml
mv -f ./device-detector/regexes/device/televisions.yml ./src/device_detector/regex/television.yml

rm -rf ./device-detector/
