package defpackage;

import android.content.Context;
import android.os.PowerManager;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class tm {
    public static final String a = vj.e("WakeLocks");
    public static final WeakHashMap<PowerManager.WakeLock, String> b = new WeakHashMap<>();

    public static PowerManager.WakeLock a(Context context, String str) {
        PowerManager powerManager = (PowerManager) context.getApplicationContext().getSystemService("power");
        String strN = jo.n("WorkManager: ", str);
        PowerManager.WakeLock wakeLockNewWakeLock = powerManager.newWakeLock(1, strN);
        WeakHashMap<PowerManager.WakeLock, String> weakHashMap = b;
        synchronized (weakHashMap) {
            weakHashMap.put(wakeLockNewWakeLock, strN);
        }
        return wakeLockNewWakeLock;
    }
}
