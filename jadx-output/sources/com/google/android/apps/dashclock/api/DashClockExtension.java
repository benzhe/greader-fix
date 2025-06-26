package com.google.android.apps.dashclock.api;

import android.app.Service;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;
import defpackage.jo;
import defpackage.qq;
import defpackage.sq;

/* loaded from: classes.dex */
public abstract class DashClockExtension extends Service {
    public static final Signature k = new Signature("308203523082023aa00302010202044c1132a9300d06092a864886f70d0101050500306b310b30090603550406130255533110300e06035504081307556e6b6e6f776e3110300e06035504071307556e6b6e6f776e3110300e060355040a1307556e6b6e6f776e3110300e060355040b1307556e6b6e6f776e311430120603550403130b526f6d616e204e7572696b301e170d3130303631303138343435375a170d3337313032363138343435375a306b310b30090603550406130255533110300e06035504081307556e6b6e6f776e3110300e06035504071307556e6b6e6f776e3110300e060355040a1307556e6b6e6f776e3110300e060355040b1307556e6b6e6f776e311430120603550403130b526f6d616e204e7572696b30820122300d06092a864886f70d01010105000382010f003082010a02820101008906222723a4b30dca6f0702b041e6f361e38e35105ec530bf43f4f1786737fefe6ccfa3b038a3700ea685dd185112a0a8f96327d3373de28e05859a87bde82372baed5618082121d6946e4affbdfb6771abb782147d58a2323518b34efcce144ec3e45fb2556eba1c40b42ccbcc1266c9469b5447edf09d5cf8e2ed62cfb3bd902e47f48a11a815a635c3879c882eae923c7f73bfba4039b7c19930617e3326fa163b924eda398bacc0d6ef8643a32223ce1d767734e866553ad50d11fb22ac3a15ba021a6a3904a95ed65f54142256cb0db90038dd55adfeeb18d3ffb085c4380817268f039119ecbdfca843e4b82209947fd88470b3d8c76fc15878fbc4f10203010001300d06092a864886f70d0101050500038201010047063efdd5011adb69cca6461a57443fef59243f85e5727ec0d67513bb04b650b1144fc1f54e09789c278171c52b9305a7265cafc13b89d91eb37ddce34a5c1f17c8c36f86c957c4e9cacc19e6822e0a5711f2cfba2c5913ba582ab69485548b13072bc736310b9da85a716d0418e6449450cedadfc1c897f93ed6189cfa0a02b893125bd4b1c4e4dd50c1ad33e221120b8488841763a3361817081e76911e76d3adcf94b23c758ceb955f9fdf8ef4a8351fc279867a25729f081b511209e96dfa8520225b810072de5e8eefc1a6cc22f46857e2cc4fd1a1eaac76054f34352b63c9d53691515b42cc771f195343e61397cb7b04ada2a627410d29c214976d13");
    public sq g;
    public volatile Looper h;
    public volatile Handler i;
    public boolean e = false;
    public boolean f = false;
    public qq j = new a();

    public class a extends qq {
        public a() {
        }
    }

    public void a(boolean z) {
    }

    public abstract void b(int i);

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.j;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        try {
            Bundle bundle = getPackageManager().getServiceInfo(new ComponentName(this, getClass()), 128).metaData;
            if (bundle != null) {
                this.f = bundle.getInt("protocolVersion") >= 2 && bundle.getBoolean("worldReadable");
            }
        } catch (PackageManager.NameNotFoundException unused) {
            Log.w("DashClockExtension", "Could not load metadata (e.g. world readable) for extension.");
        }
        StringBuilder sbZ = jo.z("DashClockExtension:");
        sbZ.append(getClass().getSimpleName());
        HandlerThread handlerThread = new HandlerThread(sbZ.toString());
        handlerThread.start();
        this.h = handlerThread.getLooper();
        this.i = new Handler(this.h);
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.i.removeCallbacksAndMessages(null);
        this.h.quit();
    }
}
