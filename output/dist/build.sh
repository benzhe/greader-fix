../../apktool/apktool b ../

rm aligned.apk

/workspaces/android_sdk/build-tools/35.0.1/zipalign -v -p 4 com.noinnion.android.greader.reader_5.2.2.apk aligned.apk
/workspaces/android_sdk/build-tools/35.0.1/apksigner sign --ks release-key.jks --ks-pass pass:123456 --out signed.apk aligned.apk

adb install signed.apk