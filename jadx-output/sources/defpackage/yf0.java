package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class yf0 {
    public static yf0 b;
    public AtomicBoolean a = new AtomicBoolean(false);

    public final Thread a(final Context context, final String str) {
        if (!this.a.compareAndSet(false, true)) {
            return null;
        }
        Thread thread = new Thread(new Runnable(this, context, str) { // from class: bg0
            public final Context e;
            public final String f;

            {
                this.e = context;
                this.f = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Context context2 = this.e;
                String str2 = this.f;
                y40.a(context2);
                Bundle bundle = new Bundle();
                bundle.putBoolean("measurementEnabled", ((Boolean) os3.j.f.a(y40.a0)).booleanValue());
                if (((Boolean) os3.j.f.a(y40.h0)).booleanValue()) {
                    bundle.putString("ad_storage", "denied");
                    bundle.putString("analytics_storage", "denied");
                }
                try {
                    ((py0) c50.D1(context2, "com.google.android.gms.ads.measurement.DynamiteMeasurementManager", ag0.a)).G0(new y20(context2), new zf0(q34.g(context2, "FA-Ads", "am", str2, bundle).d));
                } catch (RemoteException | NullPointerException | js0 e) {
                    is0.zze("#007 Could not call remote method.", e);
                }
            }
        });
        thread.start();
        return thread;
    }
}
