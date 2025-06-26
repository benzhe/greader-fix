package androidx.work.impl.background.systemalarm;

import android.content.Intent;
import android.os.PowerManager;
import androidx.lifecycle.LifecycleService;
import defpackage.tm;
import defpackage.vj;
import defpackage.wk;
import java.util.HashMap;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class SystemAlarmService extends LifecycleService implements wk.c {
    public static final String h = vj.e("SystemAlarmService");
    public wk f;
    public boolean g;

    public final void a() {
        wk wkVar = new wk(this);
        this.f = wkVar;
        if (wkVar.n != null) {
            vj.c().b(wk.o, "A completion listener for SystemAlarmDispatcher already exists.", new Throwable[0]);
        } else {
            wkVar.n = this;
        }
    }

    public void c() {
        this.g = true;
        vj.c().a(h, "All commands completed in dispatcher", new Throwable[0]);
        String str = tm.a;
        HashMap map = new HashMap();
        WeakHashMap<PowerManager.WakeLock, String> weakHashMap = tm.b;
        synchronized (weakHashMap) {
            map.putAll(weakHashMap);
        }
        for (PowerManager.WakeLock wakeLock : map.keySet()) {
            if (wakeLock != null && wakeLock.isHeld()) {
                vj.c().f(tm.a, String.format("WakeLock held for %s", map.get(wakeLock)), new Throwable[0]);
            }
        }
        stopSelf();
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public void onCreate() {
        super.onCreate();
        a();
        this.g = false;
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.g = true;
        this.f.d();
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        super.onStartCommand(intent, i, i2);
        if (this.g) {
            vj.c().d(h, "Re-initializing SystemAlarmDispatcher after a request to shut-down.", new Throwable[0]);
            this.f.d();
            a();
            this.g = false;
        }
        if (intent == null) {
            return 3;
        }
        this.f.a(intent, i2);
        return 3;
    }
}
