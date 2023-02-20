#flutter pub global run rename --bundleId com.spacesoftwareservices.kobi
#flutter pub global run rename --appname "Kobi"
#flutter pub run build_runner build --delete-conflicting-outputs
#flutter pub run build_runner build --delete-conflicting-outputs
#arch -x86_64 pod install --repo-update
#flutter devices --device-timeout 5
#flutter run --device-timeout 5
#adb connect 192.168.1.3:5555
#adb tcpip 5555

create_logo_splash: 
    @flutter pub run flutter_native_splash:create
    @flutter pub run flutter_launcher_icons

