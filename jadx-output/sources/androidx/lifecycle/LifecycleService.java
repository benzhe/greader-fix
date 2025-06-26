package androidx.lifecycle;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import defpackage.ad;
import defpackage.dd;
import defpackage.md;

/* loaded from: classes.dex */
public class LifecycleService extends Service implements dd {
    public final md e = new md(this);

    @Override // defpackage.dd
    public ad getLifecycle() {
        return this.e.a;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        this.e.a(ad.a.ON_START);
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        this.e.a(ad.a.ON_CREATE);
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        md mdVar = this.e;
        mdVar.a(ad.a.ON_STOP);
        mdVar.a(ad.a.ON_DESTROY);
        super.onDestroy();
    }

    @Override // android.app.Service
    public void onStart(Intent intent, int i) {
        this.e.a(ad.a.ON_START);
        super.onStart(intent, i);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        return super.onStartCommand(intent, i, i2);
    }
}
